.class Lcom/htc/preference/HtcMultiCheckPreference$1;
.super Ljava/lang/Object;
.source "HtcMultiCheckPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/preference/HtcMultiCheckPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcMultiCheckPreference;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcMultiCheckPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/preference/HtcMultiCheckPreference$1;->this$0:Lcom/htc/preference/HtcMultiCheckPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference$1;->this$0:Lcom/htc/preference/HtcMultiCheckPreference;

    #getter for: Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z
    invoke-static {v0}, Lcom/htc/preference/HtcMultiCheckPreference;->access$000(Lcom/htc/preference/HtcMultiCheckPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 248
    return-void
.end method
