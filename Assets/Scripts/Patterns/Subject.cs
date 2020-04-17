using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Subject
{
    protected List<Observer> observers = new List<Observer>();

    public abstract void Add(Observer o);

    public abstract int GetState();

    public abstract void SetState(int value);
}
