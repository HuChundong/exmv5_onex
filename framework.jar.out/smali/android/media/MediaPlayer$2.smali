.class Landroid/media/MediaPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlugin$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 3182
    iput-object p1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 5
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 3216
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]onError=> what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 3218
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3219
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3220
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3221
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3223
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    .line 3226
    :cond_1
    return-void
.end method

.method public onResponse(II)V
    .locals 13
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v12, 0x2001

    const/16 v11, 0x64

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3230
    const-string v5, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DLNA]onResponse=> what: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extra: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/4 v0, 0x0

    .line 3232
    .local v0, bDLNAConnected:Z
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    .line 3233
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAInitDone:Z
    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->access$1702(Landroid/media/MediaPlayer;Z)Z

    .line 3234
    sparse-switch p1, :sswitch_data_0

    .line 3327
    :cond_0
    :goto_0
    return-void

    .line 3236
    :sswitch_0
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3237
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPluginDLNA;->handleRelease()V

    .line 3238
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5, v10}, Landroid/media/MediaPlayer;->access$1202(Landroid/media/MediaPlayer;Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA;

    .line 3240
    :cond_1
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;Z)V

    .line 3241
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->resetDLNAParameters()V
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)V

    .line 3242
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->access$2002(Landroid/media/MediaPlayer;Z)Z

    .line 3243
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 3246
    :sswitch_1
    packed-switch p2, :pswitch_data_0

    .line 3256
    const-string v5, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DLNA]Unknown extra code for prepare response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :goto_1
    iget-object v8, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v8, v5}, Landroid/media/MediaPlayer;->access$2002(Landroid/media/MediaPlayer;Z)Z

    .line 3261
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3262
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]Prepare success, enable DLNA mode"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;Z)V

    .line 3269
    :goto_3
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3270
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3271
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    const/16 v6, -0x1f4

    invoke-virtual {v5, v11, v6, v7, v10}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3272
    .local v4, m:Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3248
    .end local v4           #m:Landroid/os/Message;
    :pswitch_0
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]PREPARE SUCCESS"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    const/4 v0, 0x1

    .line 3250
    goto :goto_1

    .line 3252
    :pswitch_1
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]PREPARE FAILED"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #setter for: Landroid/media/MediaPlayer;->mDLNAMode:Z
    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->access$2002(Landroid/media/MediaPlayer;Z)Z

    goto :goto_1

    :cond_2
    move v5, v7

    .line 3259
    goto :goto_2

    .line 3266
    :cond_3
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]Prepare failed, do not enable DLNA mode"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V
    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;Z)V

    goto :goto_3

    .line 3276
    :cond_4
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3277
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v5, v8, v11, v7, v10}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3278
    .restart local v4       #m:Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3282
    .end local v4           #m:Landroid/os/Message;
    :cond_5
    :try_start_0
    const-string v5, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DLNA][initDLNA]get duration from native _getDuration(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3284
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    iget-object v8, p0, Landroid/media/MediaPlayer$2;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/media/MediaPluginDLNA;->setDuration(I)V

    .line 3286
    :cond_6
    const-string v5, "MediaPlayer"

    const-string v8, "[DLNA]enable DLNA, reset MediaPlayer"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->_reset()V
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)V

    .line 3288
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3294
    :goto_4
    const-string v5, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DLNA]Enable thumbnail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dlna.marketapp.thumbnail"

    invoke-static {v9}, Landroid/media/MediaPluginDLNA;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    const-string v5, "dlna.marketapp.thumbnail"

    invoke-static {v5}, Landroid/media/MediaPluginDLNA;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3296
    .local v3, enableThumbnail:Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3297
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3298
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPluginDLNA;->startDLNAThumbnailTask()V

    .line 3307
    :cond_7
    :goto_5
    const-string v5, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[DLNA]Enable dualscreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dlna.marketapp.dualscreen"

    invoke-static {v9}, Landroid/media/MediaPluginDLNA;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const-string v5, "dlna.marketapp.dualscreen"

    invoke-static {v5}, Landroid/media/MediaPluginDLNA;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3309
    .local v2, enableDualScreen:Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3310
    if-eqz v2, :cond_9

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3311
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    invoke-static {v6}, Landroid/media/MediaPluginDLNA;->setDualScreen(Z)V

    goto/16 :goto_0

    .line 3289
    .end local v2           #enableDualScreen:Ljava/lang/String;
    .end local v3           #enableThumbnail:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3290
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 3300
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #enableThumbnail:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3301
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v12, v7, v7, v10}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3302
    .restart local v4       #m:Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 3313
    .end local v4           #m:Landroid/os/Message;
    .restart local v2       #enableDualScreen:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;

    invoke-static {v7}, Landroid/media/MediaPluginDLNA;->setDualScreen(Z)V

    goto/16 :goto_0

    .line 3318
    .end local v2           #enableDualScreen:Ljava/lang/String;
    .end local v3           #enableThumbnail:Ljava/lang/String;
    :sswitch_2
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3319
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v12, v7, v7, v10}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3320
    .restart local v4       #m:Landroid/os/Message;
    iget-object v5, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v5}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3234
    nop

    :sswitch_data_0
    .sparse-switch
        0x2001 -> :sswitch_2
        0x2041 -> :sswitch_0
        0x2080 -> :sswitch_1
    .end sparse-switch

    .line 3246
    :pswitch_data_0
    .packed-switch 0x2081
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(II)V
    .locals 6
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3192
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]onStateChanged=> what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 3194
    sparse-switch p1, :sswitch_data_0

    .line 3212
    :cond_0
    :goto_0
    return-void

    .line 3196
    :sswitch_0
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3197
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3198
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3202
    .end local v0           #m:Landroid/os/Message;
    :sswitch_1
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]onStateChanged=> MEDIA_SEEK_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3204
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3205
    .restart local v0       #m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3194
    nop

    :sswitch_data_0
    .sparse-switch
        0x1080 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 3187
    iput-object p1, p0, Landroid/media/MediaPlayer$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3188
    return-void
.end method
