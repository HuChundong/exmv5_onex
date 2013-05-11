.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setClipSize(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field final synthetic val$nBottom:I

.field final synthetic val$nLeft:I

.field final synthetic val$nRight:I

.field final synthetic val$nTop:I


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1900
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iput p2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nLeft:I

    iput p3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nTop:I

    iput p4, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nRight:I

    iput p5, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nBottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nLeft:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeL:I

    .line 1905
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nTop:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeT:I

    .line 1906
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nRight:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeR:I

    .line 1907
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->val$nBottom:I

    iput v1, v0, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mClipSizeB:I

    .line 1908
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$12;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->updateViewLayout()V

    .line 1909
    return-void
.end method
