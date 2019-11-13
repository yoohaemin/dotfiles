import XMonad
import XMonad.Layout
import XMonad.Config.Desktop
import XMonad.Hooks.SetWMName
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce
import XMonad.Util.Run (safeSpawn)
import qualified Data.Map as M
import System.Environment (getEnvironment)


-- The main function.
main = xmonad =<< statusBar bar myPP toggleStrutsKey myConfig

bar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = mod4Mask} = (mod4Mask, xK_b)

-- Main configuration, override the defaults to your liking.
myConfig = defaultConfig 
               { modMask = mod4Mask
               , terminal    = "alacritty"
               , keys        = keys desktopConfig
               , layoutHook  = smartBorders $ tiled ||| Mirror tiled ||| Full
               , startupHook = spawnOnce "xmobar" <+> 
                               setWMName "LG3D"
               , borderWidth = 2
               , focusedBorderColor = "#FF00EE"
               } `additionalKeysP` myKeys 
           where
             tiled   = Tall nmaster delta ratio
             nmaster = 1
             ratio   = 1/2
             delta   = 3/100

             myKeys = [ (("M4-f"), spawn "firefox")
                      , (("M4-S-t"), spawn "sh /home/haemin/toggle-touchpad.sh")
                      , (("M4-a"), spawn "idea-community")
                      , (("M4-p"), spawn "dmenu_run")
                      , (("M4-z"), kill)
                      ]
