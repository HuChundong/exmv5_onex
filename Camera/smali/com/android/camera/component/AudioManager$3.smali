.class Lcom/android/camera/component/AudioManager$3;
.super Lcom/android/camera/trigger/Trigger;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AudioManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AudioManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AudioManager$3;->this$0:Lcom/android/camera/component/AudioManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AudioManager$3;->this$0:Lcom/android/camera/component/AudioManager;

    #getter for: Lcom/android/camera/component/AudioManager;->m_HtcAudioManager:Landroid/media/HtcIfAudioManager;
    invoke-static {v0}, Lcom/android/camera/component/AudioManager;->access$200(Lcom/android/camera/component/AudioManager;)Landroid/media/HtcIfAudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/HtcIfAudioManager;->setVolumePanelOrientation(I)V

    return-void
.end method

.method protected onExit()V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/AudioManager$3;->this$0:Lcom/android/camera/component/AudioManager;

    iget-object v0, p0, Lcom/android/camera/component/AudioManager$3;->this$0:Lcom/android/camera/component/AudioManager;

    invoke-virtual {v0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/AudioManager;->access$300(Lcom/android/camera/component/AudioManager;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
