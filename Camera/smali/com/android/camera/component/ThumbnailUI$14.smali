.class Lcom/android/camera/component/ThumbnailUI$14;
.super Lcom/android/camera/trigger/Trigger;
.source "ThumbnailUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$14;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$14;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/RecordingState;->Starting:Lcom/android/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$14;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/camera/component/ThumbnailUI;->access$1300(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$14;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1500(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$14;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->createThumbnailImage()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$1000(Lcom/android/camera/component/ThumbnailUI;)V

    :cond_1
    return-void
.end method
