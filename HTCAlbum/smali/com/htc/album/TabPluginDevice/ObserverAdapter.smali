.class public abstract Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.super Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
.source "ObserverAdapter.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ObserverAdapter"


# instance fields
.field private mEnableObserverNotify:Z

.field protected mHandler:Landroid/os/Handler;

.field private mLocker:Ljava/lang/Object;

.field protected mMediaTypes:I

.field protected mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;I)V
    .locals 2
    .parameter "activity"
    .parameter "handler"
    .parameter "mediaTypes"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;-><init>(Landroid/app/Activity;)V

    .line 32
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    .line 33
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    .line 46
    iput p3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    .line 47
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/ObserverAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    return v0
.end method


# virtual methods
.method public enableObserverNotify()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mEnableObserverNotify:Z

    .line 60
    return-void
.end method

.method public final isObservedDataChange()Z
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;->isChanged()Z

    move-result v0

    .line 55
    :cond_0
    return v0
.end method

.method protected onLoadDataBegin()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataBegin()V

    .line 117
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->unregisterObserver()V

    .line 118
    return-void
.end method

.method protected onLoadDataEnd(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->FINISHED:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mThreadReqList:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter$threadReqMediaList;->getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->registerObserver()V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onLoadDataEnd(Ljava/lang/Integer;)V

    .line 135
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 214
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public onUnloadData()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->unregisterObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 149
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ObserverAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ObserverAdapter][onUnloadData]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerObserver()V
    .locals 6

    .prologue
    .line 63
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 66
    :cond_0
    monitor-exit v3

    .line 93
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-nez v2, :cond_6

    .line 70
    new-instance v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;-><init>(Lcom/htc/album/TabPluginDevice/ObserverAdapter;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    .line 71
    const-string v2, "ObserverAdapter"

    const-string v4, "[HTCAlbum][ObserverAdapter][registerObserver]: register new observer.."

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mMediaTypes:I

    .line 79
    .local v0, mediaTypes:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 81
    .local v1, resolver:Landroid/content/ContentResolver;
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    .line 82
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    :cond_2
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    .line 85
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    :cond_3
    and-int/lit8 v2, v0, 0xe

    if-eqz v2, :cond_4

    .line 88
    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    :cond_4
    and-int/lit16 v2, v0, 0xe0

    if-eqz v2, :cond_5

    .line 91
    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    :cond_5
    monitor-exit v3

    goto :goto_0

    .end local v0           #mediaTypes:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 75
    :cond_6
    :try_start_1
    const-string v2, "ObserverAdapter"

    const-string v4, "[HTCAlbum][ObserverAdapter][registerObserver]: already registered skip.."

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 203
    return-void
.end method

.method public unregisterObserver()V
    .locals 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    if-nez v1, :cond_0

    .line 100
    monitor-exit v2

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v1, "ObserverAdapter"

    const-string v3, "[HTCAlbum][ObserverAdapter][unregisterObserver]: unregister observer.."

    invoke-static {v1, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->mObserver:Lcom/htc/album/TabPluginDevice/ObserverAdapter$MediaObserver;

    .line 106
    monitor-exit v2

    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
