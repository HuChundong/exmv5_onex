.class final Lcom/android/camera/actionscreen/ActionScreenSelector;
.super Lcom/android/camera/component/UIComponent;
.source "ActionScreenSelector.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Action Screen Selector"


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Action Screen Selector"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreenSelector;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    :goto_0
    new-instance v2, Lcom/android/camera/actionscreen/ActionScreenSelector$1;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/actionscreen/ActionScreenSelector$1;-><init>(Lcom/android/camera/actionscreen/ActionScreenSelector;Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/actionscreen/ActionScreenSelector;->invokeAsync(Ljava/lang/Runnable;)Z

    new-instance v2, Lcom/android/camera/actionscreen/ActionScreenSelector$2;

    invoke-direct {v2, p0}, Lcom/android/camera/actionscreen/ActionScreenSelector$2;-><init>(Lcom/android/camera/actionscreen/ActionScreenSelector;)V

    invoke-virtual {p0, v2}, Lcom/android/camera/actionscreen/ActionScreenSelector;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v0, v1}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    goto :goto_0
.end method
