.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$3;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$3;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$3;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->notifyDataSetChangedW()V

    .line 944
    return-void
.end method
