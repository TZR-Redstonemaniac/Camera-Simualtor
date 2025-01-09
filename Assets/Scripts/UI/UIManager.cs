using System;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

public class UIManager : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private GameObject mainMenu;
    [SerializeField] private GameObject settingsMenu;
    [SerializeField] private GameObject overview;
    [SerializeField] private GameObject options;
    [SerializeField] private GameObject camSettings;
    [SerializeField] private GameObject spotlightSettings;
    [SerializeField] private GameObject dirLightSettings;
    
    [Header("Main Menu Objects")]
    [SerializeField] private Button startButton;
    [SerializeField] private Button settingsButton;
    [SerializeField] private Button quitButton;

    private void Update() {
        if (EditorApplication.isPlaying) quitButton.onClick.AddListener(() => { EditorApplication.isPlaying = false; });
        else quitButton.onClick.AddListener(Application.Quit);
        
        settingsButton.onClick.AddListener(SwapSettingsPage);
    }

    private void SwapSettingsPage() {
        settingsMenu.SetActive(!settingsMenu.activeInHierarchy);
        mainMenu.SetActive(!mainMenu.activeInHierarchy);
    }
}
