.class Lcom/android/camera/widget/PanoramaTrackingView$1;
.super Landroid/os/Handler;
.source "PanoramaTrackingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PanoramaTrackingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PanoramaTrackingView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PanoramaTrackingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PanoramaTrackingView$1;->this$0:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView$1;->this$0:Lcom/android/camera/widget/PanoramaTrackingView;

    #calls: Lcom/android/camera/widget/PanoramaTrackingView;->updateDeltaXY()V
    invoke-static {v0}, Lcom/android/camera/widget/PanoramaTrackingView;->access$000(Lcom/android/camera/widget/PanoramaTrackingView;)V

    :cond_0
    return-void
.end method
