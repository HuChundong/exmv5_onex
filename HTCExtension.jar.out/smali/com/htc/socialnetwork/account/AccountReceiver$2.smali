.class Lcom/htc/socialnetwork/account/AccountReceiver$2;
.super Ljava/lang/Thread;
.source "AccountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/AccountReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/AccountReceiver;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    iput-object p2, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$accountType:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 122
    iget-object v3, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 123
    .local v0, account:Landroid/accounts/Account;
    iget-object v3, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 124
    .local v1, accountManager:Landroid/accounts/AccountManager;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v2, account_extras:Landroid/os/Bundle;
    const-string v3, "MultipleLogin"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "CanRemove"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v3, "EnableSmartWiFi"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 129
    iget-object v3, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    invoke-virtual {v4}, Lcom/htc/socialnetwork/account/AccountReceiver;->getSyncableProviders()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->this$0:Lcom/htc/socialnetwork/account/AccountReceiver;

    iget-object v6, p0, Lcom/htc/socialnetwork/account/AccountReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/socialnetwork/account/AccountReceiver;->getSyncInterval(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v3, v0, v4, v5, v6}, Lcom/htc/socialnetwork/account/AccountReceiver;->doAfterLoginAccount(Landroid/content/Context;Landroid/accounts/Account;[Ljava/lang/String;J)V

    .line 130
    return-void
.end method
