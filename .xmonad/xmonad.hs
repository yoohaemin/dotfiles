import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig
import XMonad.Util.Run (safeSpawn)
import qualified Data.Map as M
import System.Environment (getEnvironment)

mateConfig = desktopConfig
    { terminal    = "alacritty"
    , keys        = keys desktopConfig
    , startupHook = setWMName "LG3D"
    }

main = do
    xmonad $ mateConfig
                { modMask = mod4Mask
                , borderWidth = 2
                , focusedBorderColor = "#FF00EE"
                } `additionalKeysP` myKeys

myKeys = [  (("M4-f"), spawn "firefox")
           ,(("M4-a"), spawn "idea-community")
           ,(("M4-z"), kill)
         ]
