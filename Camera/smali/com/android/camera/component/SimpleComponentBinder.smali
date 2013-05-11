.class public final Lcom/android/camera/component/SimpleComponentBinder;
.super Lcom/android/camera/component/ComponentBinder;
.source "SimpleComponentBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSourceComponent:",
        "Ljava/lang/Object;",
        "TTargetComponent:",
        "Lcom/android/camera/component/Component;",
        ">",
        "Lcom/android/camera/component/ComponentBinder",
        "<TTSourceComponent;TTTargetComponent;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/component/IComponentOwner;",
            "Ljava/lang/Class",
            "<TTSourceComponent;>;TTTargetComponent;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/component/ComponentBinder;-><init>(Lcom/android/camera/component/IComponentOwner;Ljava/lang/Class;Lcom/android/camera/component/Component;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getEventBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPropertyBindingInfo(Ljava/lang/Object;Lcom/android/camera/component/Component;)[Lcom/android/camera/component/ComponentBinder$BindingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSourceComponent;TTTargetComponent;)[",
            "Lcom/android/camera/component/ComponentBinder$BindingInfo",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
