.class Lcom/android/camera/widget/VideoScenesPropertyItem$2;
.super Ljava/lang/Object;
.source "VideoScenesPropertyItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/VideoScenesPropertyItem;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/VideoScenesPropertyItem;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/VideoScenesPropertyItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/VideoScenesPropertyItem$2;->this$0:Lcom/android/camera/widget/VideoScenesPropertyItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem$2;->this$0:Lcom/android/camera/widget/VideoScenesPropertyItem;

    #getter for: Lcom/android/camera/widget/VideoScenesPropertyItem;->m_Settings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/widget/VideoScenesPropertyItem;->access$000(Lcom/android/camera/widget/VideoScenesPropertyItem;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_fast_fps"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem$2;->this$0:Lcom/android/camera/widget/VideoScenesPropertyItem;

    #getter for: Lcom/android/camera/widget/VideoScenesPropertyItem;->m_slow_motion:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/widget/VideoScenesPropertyItem;->access$100(Lcom/android/camera/widget/VideoScenesPropertyItem;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/VideoScenesPropertyItem$2;->this$0:Lcom/android/camera/widget/VideoScenesPropertyItem;

    #getter for: Lcom/android/camera/widget/VideoScenesPropertyItem;->m_normal:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/widget/VideoScenesPropertyItem;->access$200(Lcom/android/camera/widget/VideoScenesPropertyItem;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    return-void
.end method
