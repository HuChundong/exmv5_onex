.class Lcom/htc/sunnyCore/widget/presentation/SPresentation$2;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAdapter(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

.field final synthetic val$adapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/presentation/SPresentation;Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iput-object p2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$2;->val$adapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$2;->this$0:Lcom/htc/sunnyCore/widget/presentation/SPresentation;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentation$2;->val$adapter:Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/presentation/SPresentation;->setAdapterW(Lcom/htc/sunnyCore/widget/presentation/SPresentationAdapterBase;)V

    .line 872
    return-void
.end method
