.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setContainerCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field final synthetic val$nContainerCount:I


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2985
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iput p2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->val$nContainerCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2989
    iget v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->val$nContainerCount:I

    .line 2990
    .local v0, nCount:I
    if-lez v0, :cond_0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 2991
    invoke-static {}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set container count as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". It should be an odd number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    add-int/lit8 v0, v0, -0x1

    .line 2994
    :cond_0
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v1, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->val$nContainerCount:I

    if-eq v1, v2, :cond_1

    .line 2995
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iput v0, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mContainerCount:I

    .line 2996
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->initDefaultLayout()V

    .line 2997
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    .line 2999
    :cond_1
    return-void
.end method
