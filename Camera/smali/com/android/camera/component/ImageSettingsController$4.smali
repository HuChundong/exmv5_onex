.class Lcom/android/camera/component/ImageSettingsController$4;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageSettingsController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$4;->this$0:Lcom/android/camera/component/ImageSettingsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$4;->this$0:Lcom/android/camera/component/ImageSettingsController;

    invoke-virtual {v0}, Lcom/android/camera/component/ImageSettingsController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isResettingToDefault:Lcom/android/camera/property/Property;

    new-instance v1, Lcom/android/camera/component/ImageSettingsController$4$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ImageSettingsController$4$1;-><init>(Lcom/android/camera/component/ImageSettingsController$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
