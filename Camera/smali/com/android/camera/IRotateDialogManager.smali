.class public abstract Lcom/android/camera/IRotateDialogManager;
.super Lcom/android/camera/component/ServiceCameraComponent;
.source "IRotateDialogManager.java"


# instance fields
.field public final hasDialog:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Z)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IRotateDialogManager.hasDialog"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/IRotateDialogManager;->hasDialog:Lcom/android/camera/property/Property;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    return-void
.end method

.method public abstract hideDialog(Lcom/android/camera/Handle;)V
.end method

.method public final showDialog(Landroid/app/Dialog;)Lcom/android/camera/Handle;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/android/camera/Handle;

    move-result-object v0

    return-object v0
.end method

.method public abstract showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/android/camera/Handle;
.end method
