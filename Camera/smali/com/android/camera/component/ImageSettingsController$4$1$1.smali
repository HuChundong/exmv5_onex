.class Lcom/android/camera/component/ImageSettingsController$4$1$1;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsController$4$1;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/component/ImageSettingsController$4$1;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$4$1$1;->this$2:Lcom/android/camera/component/ImageSettingsController$4$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$4$1$1;->this$2:Lcom/android/camera/component/ImageSettingsController$4$1;

    iget-object v0, v0, Lcom/android/camera/component/ImageSettingsController$4$1;->this$1:Lcom/android/camera/component/ImageSettingsController$4;

    iget-object v0, v0, Lcom/android/camera/component/ImageSettingsController$4;->this$0:Lcom/android/camera/component/ImageSettingsController;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/ImageSettingsController;->m_NeedToReset:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ImageSettingsController;->access$302(Lcom/android/camera/component/ImageSettingsController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$4$1$1;->this$2:Lcom/android/camera/component/ImageSettingsController$4$1;

    iget-object v0, v0, Lcom/android/camera/component/ImageSettingsController$4$1;->this$1:Lcom/android/camera/component/ImageSettingsController$4;

    iget-object v0, v0, Lcom/android/camera/component/ImageSettingsController$4;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #calls: Lcom/android/camera/component/ImageSettingsController;->unlockAutoExposure(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$100(Lcom/android/camera/component/ImageSettingsController;Z)V

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$4$1$1;->this$2:Lcom/android/camera/component/ImageSettingsController$4$1;

    iget-object v0, v0, Lcom/android/camera/component/ImageSettingsController$4$1;->this$1:Lcom/android/camera/component/ImageSettingsController$4;

    iget-object v0, v0, Lcom/android/camera/component/ImageSettingsController$4;->this$0:Lcom/android/camera/component/ImageSettingsController;

    #calls: Lcom/android/camera/component/ImageSettingsController;->unlockAutoWhiteBalance(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/ImageSettingsController;->access$200(Lcom/android/camera/component/ImageSettingsController;Z)V

    return-void
.end method
