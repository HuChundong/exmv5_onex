.class Lcom/htc/util/mail/Folder$AsyncQueryRunnable;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncQueryRunnable"
.end annotation


# instance fields
.field private isUsing:I

.field private mMessageId:J

.field private mWhereString:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/util/mail/Folder;


# direct methods
.method constructor <init>(Lcom/htc/util/mail/Folder;J)V
    .locals 2
    .parameter
    .parameter "messageId"

    .prologue
    .line 886
    iput-object p1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->this$0:Lcom/htc/util/mail/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mMessageId:J

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mWhereString:Ljava/lang/String;

    .line 878
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->isUsing:I

    .line 887
    iput-wide p2, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mMessageId:J

    .line 888
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->isUsing:I

    .line 889
    return-void
.end method

.method constructor <init>(Lcom/htc/util/mail/Folder;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "whereString"

    .prologue
    .line 897
    iput-object p1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->this$0:Lcom/htc/util/mail/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mMessageId:J

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mWhereString:Ljava/lang/String;

    .line 878
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->isUsing:I

    .line 898
    iput-object p2, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mWhereString:Ljava/lang/String;

    .line 899
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->isUsing:I

    .line 900
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 909
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->isUsing:I

    if-ne v0, v1, :cond_1

    .line 910
    new-instance v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;

    iget-object v1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->this$0:Lcom/htc/util/mail/Folder;

    iget-object v1, v1, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->this$0:Lcom/htc/util/mail/Folder;

    #getter for: Lcom/htc/util/mail/Folder;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;
    invoke-static {v2}, Lcom/htc/util/mail/Folder;->access$000(Lcom/htc/util/mail/Folder;)Lcom/htc/util/mail/IMailMessageListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/AsyncQueryMessageHandler;-><init>(Landroid/content/Context;Lcom/htc/util/mail/IMailMessageListener;)V

    iget-wide v1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/AsyncQueryMessageHandler;->startQuery(J)V

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->isUsing:I

    if-ne v0, v1, :cond_0

    .line 912
    new-instance v0, Lcom/htc/util/mail/AsyncQueryMessageHandler;

    iget-object v1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->this$0:Lcom/htc/util/mail/Folder;

    iget-object v1, v1, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->this$0:Lcom/htc/util/mail/Folder;

    #getter for: Lcom/htc/util/mail/Folder;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;
    invoke-static {v2}, Lcom/htc/util/mail/Folder;->access$000(Lcom/htc/util/mail/Folder;)Lcom/htc/util/mail/IMailMessageListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/util/mail/AsyncQueryMessageHandler;-><init>(Landroid/content/Context;Lcom/htc/util/mail/IMailMessageListener;)V

    iget-object v1, p0, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;->mWhereString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/AsyncQueryMessageHandler;->startQuery(Ljava/lang/String;)V

    goto :goto_0
.end method
