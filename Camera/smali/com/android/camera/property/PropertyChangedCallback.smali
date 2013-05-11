.class public interface abstract Lcom/android/camera/property/PropertyChangedCallback;
.super Ljava/lang/Object;
.source "PropertyChangedCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<TTValue;>;)V"
        }
    .end annotation
.end method
