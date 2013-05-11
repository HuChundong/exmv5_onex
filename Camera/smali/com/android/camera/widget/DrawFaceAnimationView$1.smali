.class Lcom/android/camera/widget/DrawFaceAnimationView$1;
.super Landroid/os/Handler;
.source "DrawFaceAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/DrawFaceAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/DrawFaceAnimationView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/DrawFaceAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/DrawFaceAnimationView$1;->this$0:Lcom/android/camera/widget/DrawFaceAnimationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView$1;->this$0:Lcom/android/camera/widget/DrawFaceAnimationView;

    #calls: Lcom/android/camera/widget/DrawFaceAnimationView;->doAnimate()V
    invoke-static {v0}, Lcom/android/camera/widget/DrawFaceAnimationView;->access$000(Lcom/android/camera/widget/DrawFaceAnimationView;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/DrawFaceAnimationView$1;->this$0:Lcom/android/camera/widget/DrawFaceAnimationView;

    iget-object v1, p0, Lcom/android/camera/widget/DrawFaceAnimationView$1;->this$0:Lcom/android/camera/widget/DrawFaceAnimationView;

    #getter for: Lcom/android/camera/widget/DrawFaceAnimationView;->m_FaceIndex:I
    invoke-static {v1}, Lcom/android/camera/widget/DrawFaceAnimationView;->access$100(Lcom/android/camera/widget/DrawFaceAnimationView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/DrawFaceAnimationView;->showFacesAnimation(I)V

    :cond_1
    return-void
.end method
