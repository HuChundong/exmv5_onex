.class Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;
.super Ljava/lang/Object;
.source "ActivityMainWriteComment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->initPageComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #getter for: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$100(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->enableCommentBtn(Z)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #getter for: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$100(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->enableCommentBtn(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 127
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 134
    return-void
.end method
