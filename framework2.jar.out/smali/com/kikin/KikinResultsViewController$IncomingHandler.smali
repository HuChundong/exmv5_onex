.class Lcom/kikin/KikinResultsViewController$IncomingHandler;
.super Landroid/os/Handler;
.source "KikinResultsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/KikinResultsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kikin/KikinResultsViewController;


# direct methods
.method constructor <init>(Lcom/kikin/KikinResultsViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 1089
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1090
    .local v0, bundle:Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1183
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1185
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1097
    .restart local v0       #bundle:Landroid/os/Bundle;
    :pswitch_1
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$000(Lcom/kikin/KikinResultsViewController;)Landroid/view/ActionMode;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1098
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$000(Lcom/kikin/KikinResultsViewController;)Landroid/view/ActionMode;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1104
    :pswitch_2
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    const-string v7, "com.kikin.oldQuery"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.kikin.newQuery"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/kikin/KikinResultsViewController;->onQueryWasRewritten(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/kikin/KikinResultsViewController;->access$100(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    :pswitch_3
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    const-string v7, "com.kikin.query"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/kikin/KikinResultsViewController;->onQueryChanges(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/kikin/KikinResultsViewController;->access$200(Lcom/kikin/KikinResultsViewController;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :pswitch_4
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mIsVisible:I
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$300(Lcom/kikin/KikinResultsViewController;)I

    move-result v6

    if-nez v6, :cond_2

    .line 1117
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Messenger;

    .line 1119
    .local v4, messenger:Landroid/os/Messenger;
    const/4 v6, 0x0

    const/4 v8, 0x6

    :try_start_0
    invoke-static {v6, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1120
    .local v3, message:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1121
    .local v1, hideBundle:Landroid/os/Bundle;
    const-string v6, "com.kikin.shouldRestore"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1122
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1123
    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    .end local v1           #hideBundle:Landroid/os/Bundle;
    .end local v3           #message:Landroid/os/Message;
    :goto_1
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #setter for: Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;
    invoke-static {v6, v7}, Lcom/kikin/KikinResultsViewController;->access$402(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1139
    .end local v4           #messenger:Landroid/os/Messenger;
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mView:Landroid/view/View;
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$600(Lcom/kikin/KikinResultsViewController;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v8, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Messenger;

    #setter for: Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;
    invoke-static {v8, v6}, Lcom/kikin/KikinResultsViewController;->access$402(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1132
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$500(Lcom/kikin/KikinResultsViewController;)Landroid/os/Messenger;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1133
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    iget-object v8, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;
    invoke-static {v8}, Lcom/kikin/KikinResultsViewController;->access$500(Lcom/kikin/KikinResultsViewController;)Landroid/os/Messenger;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/kikin/KikinResultsViewController;->setTutorialMessenger(Landroid/os/Messenger;)Z

    .line 1134
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #setter for: Lcom/kikin/KikinResultsViewController;->mTutorialActivityMessenger:Landroid/os/Messenger;
    invoke-static {v6, v7}, Lcom/kikin/KikinResultsViewController;->access$502(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;

    goto :goto_2

    .line 1146
    :pswitch_5
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    iget-object v8, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mShouldStoreResultsViewState:Z
    invoke-static {v8}, Lcom/kikin/KikinResultsViewController;->access$800(Lcom/kikin/KikinResultsViewController;)Z

    move-result v8

    if-eqz v8, :cond_3

    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_3
    #setter for: Lcom/kikin/KikinResultsViewController;->mKikinResultsContainerState:Landroid/os/Bundle;
    invoke-static {v6, v0}, Lcom/kikin/KikinResultsViewController;->access$702(Lcom/kikin/KikinResultsViewController;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_0

    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_3
    move-object v0, v7

    goto :goto_3

    .line 1154
    :pswitch_6
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #calls: Lcom/kikin/KikinResultsViewController;->hideKikinPaddingView()V
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$900(Lcom/kikin/KikinResultsViewController;)V

    .line 1160
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mIsVisible:I
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$300(Lcom/kikin/KikinResultsViewController;)I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_0

    .line 1161
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #setter for: Lcom/kikin/KikinResultsViewController;->mKikinSearchActivityMessenger:Landroid/os/Messenger;
    invoke-static {v6, v7}, Lcom/kikin/KikinResultsViewController;->access$402(Lcom/kikin/KikinResultsViewController;Landroid/os/Messenger;)Landroid/os/Messenger;

    goto/16 :goto_0

    .line 1166
    :pswitch_7
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v6}, Lcom/kikin/KikinResultsViewController;->bringKikinBarToFront()V

    goto/16 :goto_0

    .line 1170
    :pswitch_8
    const-string v6, "com.kikin.bar.maxYPosition"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 1171
    .local v2, maxYPosition:F
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    invoke-virtual {v6, v2}, Lcom/kikin/KikinResultsViewController;->makeSelectionVisible(F)V

    goto/16 :goto_0

    .line 1175
    .end local v2           #maxYPosition:F
    :pswitch_9
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$1000(Lcom/kikin/KikinResultsViewController;)Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1176
    const-string v6, "com.kikin.bar.visibility"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1177
    .local v5, visibility:I
    iget-object v6, p0, Lcom/kikin/KikinResultsViewController$IncomingHandler;->this$0:Lcom/kikin/KikinResultsViewController;

    #getter for: Lcom/kikin/KikinResultsViewController;->mKikinResultsViewControllerVisibility:Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;
    invoke-static {v6}, Lcom/kikin/KikinResultsViewController;->access$1000(Lcom/kikin/KikinResultsViewController;)Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/kikin/KikinResultsViewController$KikinResultsViewControllerVisibility;->setVisibility(I)V

    goto/16 :goto_0

    .line 1124
    .end local v5           #visibility:I
    .restart local v4       #messenger:Landroid/os/Messenger;
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 1090
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
