using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinionHealthBarUI : MonoBehaviour
{
    [SerializeField]
    private Image healthImage;

    [SerializeField]
    private float updateSpeedSeconds = 0.2f;

    public void HealthChanged(int currenthp, int maxhp)
    {
        StartCoroutine(ChangeHealthPercentage(currenthp, maxhp));
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
        GetComponentInParent<MinionController>().OnHealthChanged += HealthChanged;
        transform.eulerAngles = new Vector3(45, 80, 0);
    }
    
    void Update()
    {
        transform.eulerAngles = new Vector3(45, 80, 0);
    }
}
