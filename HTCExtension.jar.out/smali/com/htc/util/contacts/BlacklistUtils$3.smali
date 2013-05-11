.class final Lcom/htc/util/contacts/BlacklistUtils$3;
.super Ljava/lang/Thread;
.source "BlacklistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/BlacklistUtils;->addContactToBlacklist(Landroid/content/Context;JZZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$black_number:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/util/contacts/BlacklistUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/util/contacts/BlacklistUtils$3;->val$black_number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/util/contacts/BlacklistUtils$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/util/contacts/BlacklistUtils$3;->val$black_number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BlacklistUtils;->addBlackNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    return-void
.end method
