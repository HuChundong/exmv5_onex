.class Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;
.super Ljava/lang/Object;
.source "ActivityMainWriteComment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 86
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #calls: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onWriteComment()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$000(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V

    .line 90
    return-void
.end method
