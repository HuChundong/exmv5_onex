.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelection(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field final synthetic val$bAnimated:Z

.field final synthetic val$nUIPos:I


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iput p2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;->val$nUIPos:I

    iput-boolean p3, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;->val$bAnimated:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;->val$nUIPos:I

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$6;->val$bAnimated:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setSelectionW(IZ)V

    .line 1043
    return-void
.end method
