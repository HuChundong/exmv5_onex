.class Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$3;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->performHapticFeedback(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

.field final synthetic val$feedbackConstant:I


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$3;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iput p2, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$3;->val$feedbackConstant:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$3;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$3;->val$feedbackConstant:I

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SSurfaceView;->performHapticFeedback(I)Z

    .line 889
    return-void
.end method
