.class Lcom/htc/sunnyCore/widget/gridview/GridView$4;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field final synthetic val$createIndex:[I

.field final synthetic val$deleteIndex:[I

.field final synthetic val$listener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;[I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3755
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->val$deleteIndex:[I

    iput-object p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->val$createIndex:[I

    iput-object p4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->val$listener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3758
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->val$deleteIndex:[I

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->val$createIndex:[I

    iget-object v3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$4;->val$listener:Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;

    #calls: Lcom/htc/sunnyCore/widget/gridview/GridView;->startDataSetChangeAnimation_IRT([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->access$1300(Lcom/htc/sunnyCore/widget/gridview/GridView;[I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 3759
    return-void
.end method
