.class Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo$1;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;->showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo$1;->this$1:Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDRMProtectInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 511
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 512
    return-void
.end method
