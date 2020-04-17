using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NexusHealthBarUI : MonoBehaviour
{
    [SerializeField]
    private Image healthImage;
    [SerializeField]
    private Text healthText;

    [SerializeField]
    private float updateSpeedSeconds = 0.2f;

    public void HealthChanged(int currenthp, int maxhp)
    {
        StartCoroutine(ChangeHealthPercentage(currenthp, maxhp));
        healthText.text = currenthp.ToString("n0");
    }

    private IEnumerator ChangeHealthPercentage(int currenthp, int maxhp)
    {
        float oldPct = healthImage.fillAmount;
        float pct = currenthp / (float)maxhp;
        float elapsed = 0f;
        while (elapsed < updateSpeedSeconds)
        {
            elapsed += Time.deltaTime;
            healthImage.fillAmount = Mathf.Lerp(oldPct, pct, elapsed / updateSpeedSeconds);
            yield return null;
        }
        healthImage.fillAmount = pct;
    }

    // Start is called before the first frame update
    void Start()
    {
        GetComponentInParent<NexusBehaviour>().OnHealthChanged += HealthChanged;
        transform.eulerAngles = new Vector3(45, 80, 0);
    }
    
}
