.class Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->performHapticFeedback(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

.field final synthetic val$feedbackConstant:I

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iput p2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;->val$feedbackConstant:I

    iput p3, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;->val$flags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;->val$feedbackConstant:I

    iget v2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$4;->val$flags:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/view/SSurfaceView;->performHapticFeedback(II)Z

    .line 898
    return-void
.end method
