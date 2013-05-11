.class Lcom/android/server/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    .locals 3
    .parameter
    .parameter "wallpaper"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    .line 116
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x688

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 119
    iget v0, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    #calls: Lcom/android/server/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 120
    iput-object p2, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 122
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 10
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v8, 0x8

    .line 126
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    const-string v4, "WallpaperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WallpaperObserver onEvent ev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    if-nez p2, :cond_1

    .line 155
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 132
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 133
    .local v2, origId:J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 135
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v1, changedFile:Ljava/io/File;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2

    const-string v4, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changedFile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 140
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3

    const-string v4, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyCallbacksLocked wallpaperComponent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v7, v7, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " imageWallpaperPending="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v7, v7, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$100(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 142
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    if-ne p1, v8, :cond_4

    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-boolean v4, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v4, :cond_8

    .line 144
    :cond_4
    if-ne p1, v8, :cond_6

    .line 145
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_5

    const-string v4, "WallpaperService"

    const-string v6, "CLOSE_WRITE imageWallpaperPending=false"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 148
    :cond_6
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    iget-object v6, v6, Lcom/android/server/WallpaperManagerService$WallpaperData;->imageWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 150
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_7

    const-string v4, "WallpaperService"

    const-string v6, "WallpaperObserver saveSettingsLocked"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_7
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, p0, Lcom/android/server/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/WallpaperManagerService$WallpaperData;

    #calls: Lcom/android/server/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V
    invoke-static {v4, v6}, Lcom/android/server/WallpaperManagerService;->access$200(Lcom/android/server/WallpaperManagerService;Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 154
    :cond_8
    monitor-exit v5

    goto/16 :goto_0

    .end local v0           #bm:Landroid/app/backup/BackupManager;
    .end local v1           #changedFile:Ljava/io/File;
    .end local v2           #origId:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
