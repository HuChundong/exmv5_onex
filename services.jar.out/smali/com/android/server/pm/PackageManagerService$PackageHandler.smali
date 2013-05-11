.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 745
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 746
    return-void
.end method

.method private connectToService()Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 724
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 725
    .local v0, service:Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 726
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 729
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 733
    :goto_0
    return v1

    .line 732
    :cond_0
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    .line 733
    goto :goto_0
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$702(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 738
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 739
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 740
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 741
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 742
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 40
    .parameter "msg"

    .prologue
    .line 757
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 760
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 761
    .local v25, params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 766
    .local v21, idx:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_2

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_1

    .line 770
    const-string v2, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_0

    .line 776
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 779
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 782
    if-nez v21, :cond_0

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 790
    .end local v21           #idx:I
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    #setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->access$702(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 793
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    if-nez v2, :cond_5

    .line 795
    const-string v2, "PackageManager"

    const-string v3, "Cannot bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 798
    .restart local v25       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .line 800
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 801
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 803
    .restart local v25       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v25, :cond_0

    .line 804
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 813
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 814
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 817
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 818
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v35

    .line 821
    .local v35, ubmsg:Landroid/os/Message;
    const-wide/16 v2, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 829
    .end local v35           #ubmsg:Landroid/os/Message;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 835
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_8
    const-string v2, "PackageManager"

    const-string v3, "Empty queue"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 841
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 842
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_9

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 845
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    const-string v2, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 849
    .restart local v25       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .line 851
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 861
    .end local v20           #i$:Ljava/util/Iterator;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 863
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_0

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 868
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 879
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 885
    :sswitch_5
    const/16 v33, 0x0

    .line 887
    .local v33, size:I
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 889
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    if-nez v2, :cond_c

    .line 890
    monitor-exit v3

    goto/16 :goto_0

    .line 913
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 892
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v33

    .line 893
    if-gtz v33, :cond_d

    .line 895
    monitor-exit v3

    goto/16 :goto_0

    .line 897
    :cond_d
    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 898
    .local v24, packages:[Ljava/lang/String;
    move/from16 v0, v33

    new-array v13, v0, [Ljava/util/ArrayList;

    .line 899
    .local v13, components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 901
    .local v36, uids:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 902
    .local v22, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/16 v19, 0x0

    .line 903
    .local v19, i:I
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 904
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 905
    .local v18, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v24, v19

    .line 906
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, v13, v19

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/PackageSetting;

    .line 908
    .local v26, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v26, :cond_e

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    :goto_4
    aput v2, v36, v19

    .line 909
    add-int/lit8 v19, v19, 0x1

    .line 910
    goto :goto_3

    .line 908
    :cond_e
    const/4 v2, -0x1

    goto :goto_4

    .line 911
    .end local v18           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v26           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_f
    move/from16 v33, v19

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 913
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v3, v24, v19

    const/4 v5, 0x1

    aget-object v7, v13, v19

    aget v39, v36, v19

    move/from16 v0, v39

    #calls: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v2, v3, v5, v7, v0}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 915
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 918
    :cond_10
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 922
    .end local v13           #components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #i:I
    .end local v22           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v24           #packages:[Ljava/lang/String;
    .end local v33           #size:I
    .end local v36           #uids:[I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 923
    .local v23, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 925
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_11
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 929
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 928
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 934
    .end local v23           #packageName:Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 935
    .local v14, data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 936
    const/4 v15, 0x0

    .line 938
    .local v15, deleteOld:Z
    if-eqz v14, :cond_17

    .line 939
    iget-object v11, v14, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 940
    .local v11, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v0, v14, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v28, v0

    .line 942
    .local v28, res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 943
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 944
    new-instance v4, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 945
    .local v4, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v2, :cond_16

    const/16 v37, 0x1

    .line 947
    .local v37, update:Z
    :goto_6
    if-eqz v37, :cond_12

    .line 948
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 950
    :cond_12
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 953
    if-eqz v37, :cond_13

    .line 954
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 957
    const-string v5, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 962
    :cond_13
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v2, :cond_14

    .line 964
    const/4 v15, 0x1

    .line 968
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v37           #update:Z
    :cond_14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 970
    if-eqz v15, :cond_15

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 972
    :try_start_4
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 973
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 975
    :cond_15
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v2, :cond_0

    .line 977
    :try_start_5
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-interface {v2, v3, v5}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 978
    :catch_0
    move-exception v17

    .line 979
    .local v17, e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 946
    .end local v17           #e:Landroid/os/RemoteException;
    .restart local v4       #extras:Landroid/os/Bundle;
    :cond_16
    const/16 v37, 0x0

    goto :goto_6

    .line 973
    .end local v4           #extras:Landroid/os/Bundle;
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 983
    .end local v11           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v28           #res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_17
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bogus post-install token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 988
    .end local v14           #data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v15           #deleteOld:Z
    :sswitch_8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const/16 v27, 0x1

    .line 989
    .local v27, reportStatus:Z
    :goto_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    const/16 v16, 0x1

    .line 991
    .local v16, doGc:Z
    :goto_8
    if-eqz v16, :cond_18

    .line 993
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 995
    :cond_18
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_19

    .line 997
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    .line 1000
    .local v12, args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v2, v12}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 1002
    .end local v12           #args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_19
    if-eqz v27, :cond_0

    .line 1005
    :try_start_7
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1006
    :catch_1
    move-exception v17

    .line 1007
    .restart local v17       #e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "MountService not running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 988
    .end local v16           #doGc:Z
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v27           #reportStatus:Z
    :cond_1a
    const/16 v27, 0x0

    goto :goto_7

    .line 989
    .restart local v27       #reportStatus:Z
    :cond_1b
    const/16 v16, 0x0

    goto :goto_8

    .line 1012
    .end local v27           #reportStatus:Z
    :sswitch_9
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1014
    const/16 v2, 0xd

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1015
    const/16 v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1018
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1019
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1018
    :catchall_3
    move-exception v2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 1022
    :sswitch_a
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 1024
    const/16 v2, 0xe

    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1026
    .local v10, userId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_9

    .line 1029
    .end local v10           #userId:I
    .end local v20           #i$:Ljava/util/Iterator;
    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 1028
    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1029
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1030
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 1033
    .end local v20           #i$:Ljava/util/Iterator;
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 1034
    .local v38, verificationId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/pm/PackageVerificationState;

    .line 1036
    .local v34, state:Lcom/android/server/pm/PackageVerificationState;
    if-eqz v34, :cond_0

    .line 1037
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v11

    .line 1038
    .restart local v11       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verification timed out for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1041
    const/16 v31, -0x15

    .line 1042
    .local v31, ret:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v31

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v2, v11, v0}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1050
    .end local v11           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v31           #ret:I
    .end local v34           #state:Lcom/android/server/pm/PackageVerificationState;
    .end local v38           #verificationId:I
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 1052
    .restart local v38       #verificationId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/pm/PackageVerificationState;

    .line 1053
    .restart local v34       #state:Lcom/android/server/pm/PackageVerificationState;
    if-nez v34, :cond_1d

    .line 1054
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid verification token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " received"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1058
    :cond_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1060
    .local v29, response:Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1062
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1065
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v11

    .line 1068
    .restart local v11       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1070
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v2, :cond_1e

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->willScanFor3LM(Lcom/android/server/pm/PackageManagerService$InstallArgs;)Z
    invoke-static {v2, v11}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    :cond_1e
    const/16 v31, -0x6e

    .line 1076
    .restart local v31       #ret:I
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    move-result v31

    .line 1084
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v31

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v2, v11, v0}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1077
    :catch_2
    move-exception v17

    .line 1078
    .restart local v17       #e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1081
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v31           #ret:I
    :cond_1f
    const/16 v31, -0x16

    .restart local v31       #ret:I
    goto :goto_a

    .line 1095
    .end local v11           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v29           #response:Lcom/android/server/pm/PackageVerificationResponse;
    .end local v31           #ret:I
    .end local v34           #state:Lcom/android/server/pm/PackageVerificationState;
    .end local v38           #verificationId:I
    :sswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 1096
    .local v32, scanId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/pm/PackageScanState;

    .line 1098
    .local v34, state:Lcom/android/server/pm/PackageScanState;
    if-eqz v34, :cond_0

    .line 1099
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v11

    .line 1100
    .restart local v11       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3LM, Scan timed out for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1104
    const/16 v2, 0x11

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_20

    .line 1105
    const/16 v31, -0x15

    .line 1106
    .restart local v31       #ret:I
    const-string v2, "PackageManager"

    const-string v3, "3LM, Failing package install after timeout"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v31

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v2, v11, v0}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1108
    .end local v31           #ret:I
    :cond_20
    const/16 v31, -0x6e

    .line 1110
    .restart local v31       #ret:I
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    move-result v31

    goto :goto_b

    .line 1111
    :catch_3
    move-exception v17

    .line 1112
    .restart local v17       #e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "3LM, Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1121
    .end local v11           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v31           #ret:I
    .end local v32           #scanId:I
    .end local v34           #state:Lcom/android/server/pm/PackageScanState;
    :sswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 1122
    .restart local v32       #scanId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/pm/PackageScanState;

    .line 1123
    .restart local v34       #state:Lcom/android/server/pm/PackageScanState;
    if-nez v34, :cond_21

    .line 1124
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3LM, Invalid scan token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1127
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1128
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 1129
    .local v30, responseCode:I
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v11

    .line 1130
    .restart local v11       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const/16 v31, -0x16

    .line 1131
    .restart local v31       #ret:I
    const/16 v2, 0x3e8

    move/from16 v0, v30

    if-ne v0, v2, :cond_22

    .line 1132
    const/16 v31, -0x6e

    .line 1134
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    move-result v31

    .line 1139
    :cond_22
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v31

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v2, v11, v0}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1135
    :catch_4
    move-exception v17

    .line 1136
    .restart local v17       #e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "3LM, Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1146
    .end local v11           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v30           #responseCode:I
    .end local v31           #ret:I
    .end local v32           #scanId:I
    .end local v34           #state:Lcom/android/server/pm/PackageScanState;
    :sswitch_f
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_23

    .line 1147
    const-string v2, "PackageManager"

    const-string v3, "Got message pending enable setting..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_23
    const/4 v8, 0x0

    .local v8, newState:I
    const/4 v9, 0x0

    .local v9, flags:I
    const/4 v10, 0x0

    .line 1150
    .restart local v10       #userId:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_26

    .line 1151
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 1152
    .local v6, appPackageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    .line 1153
    .local v14, data:Landroid/os/Bundle;
    if-eqz v14, :cond_24

    .line 1154
    const-string v2, "newState"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1155
    const-string v2, "flags"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1156
    const-string v2, "userId"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1158
    :cond_24
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_25

    .line 1159
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending enable setting for app:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", newState:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", flags:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", userId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->setEnabledSetting(Ljava/lang/String;Ljava/lang/String;III)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 1163
    .end local v6           #appPackageName:Ljava/lang/String;
    .end local v14           #data:Landroid/os/Bundle;
    :cond_26
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    .line 1164
    const-string v2, "PackageManager"

    const-string v3, "Failed to handle pending enable setting."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 757
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_d
        0x12 -> :sswitch_d
        0x13 -> :sswitch_e
        0x32 -> :sswitch_f
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/16 v1, 0xa

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService$Injector;->doHandleMessage(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
