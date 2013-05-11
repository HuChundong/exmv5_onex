.class Landroid/app/backup/IBackupManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 385
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 387
    return-void
.end method


# virtual methods
.method public BackupRestoreForExternalTransport(Ljava/lang/String;ZJ[Ljava/lang/String;)Z
    .locals 7
    .parameter "name"
    .parameter "action"
    .parameter "token"
    .parameter "packages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1088
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1091
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1093
    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1095
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1096
    iget-object v4, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1101
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1104
    return v2

    .end local v2           #_result:Z
    :cond_0
    move v4, v3

    .line 1093
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1098
    goto :goto_1

    .line 1101
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    throw v3
.end method

.method public BackupStatus()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1114
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1117
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1123
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1126
    return-object v2

    .line 1123
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    throw v3
.end method

.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 5
    .parameter "token"
    .parameter "allow"
    .parameter "curPassword"
    .parameter "encryptionPassword"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 765
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 770
    if-eqz p5, :cond_1

    invoke-interface {p5}, Landroid/app/backup/IFullBackupRestoreObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 771
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    return-void

    .line 770
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 775
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    throw v2
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .parameter "packageName"
    .parameter "agent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 451
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 454
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    return-void

    .line 458
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    throw v2
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    return-void

    .line 477
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public backupNow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 657
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 659
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 667
    return-void

    .line 664
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 664
    throw v2
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 6
    .parameter "packageName"
    .parameter "transportID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 929
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 932
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 937
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IRestoreSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 940
    .local v2, _result:Landroid/app/backup/IRestoreSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    return-object v2

    .line 940
    .end local v2           #_result:Landroid/app/backup/IRestoreSession;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 940
    throw v3
.end method

.method public clearBackupData(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 432
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 441
    return-void

    .line 438
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw v2
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 409
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw v2
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "includeApks"
    .parameter "includeShared"
    .parameter "allApps"
    .parameter "allIncludesSystem"
    .parameter "packageNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 696
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 698
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 699
    if-eqz p1, :cond_0

    .line 700
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 706
    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    if-eqz p3, :cond_2

    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    if-eqz p4, :cond_3

    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    if-eqz p5, :cond_4

    :goto_4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    return-void

    .line 704
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 715
    throw v2

    :cond_1
    move v4, v3

    .line 706
    goto :goto_1

    :cond_2
    move v4, v3

    .line 707
    goto :goto_2

    :cond_3
    move v4, v3

    .line 708
    goto :goto_3

    :cond_4
    move v2, v3

    .line 709
    goto :goto_4
.end method

.method public fullBackupPrivileged(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 5
    .parameter "fd"
    .parameter "includeApks"
    .parameter "includeShared"
    .parameter "allApps"
    .parameter "allIncludesSystem"
    .parameter "packageNames"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 996
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 998
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 999
    if-eqz p1, :cond_0

    .line 1000
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1006
    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    if-eqz p3, :cond_2

    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    if-eqz p4, :cond_3

    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    if-eqz p5, :cond_4

    :goto_4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1011
    if-eqz p7, :cond_5

    invoke-interface {p7}, Landroid/app/backup/IFullBackupRestoreObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1012
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    return-void

    .line 1004
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1016
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    throw v2

    :cond_1
    move v4, v3

    .line 1006
    goto :goto_1

    :cond_2
    move v4, v3

    .line 1007
    goto :goto_2

    :cond_3
    move v4, v3

    .line 1008
    goto :goto_3

    :cond_4
    move v2, v3

    .line 1009
    goto :goto_4

    .line 1011
    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 728
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 730
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    if-eqz p1, :cond_0

    .line 732
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 738
    :goto_0
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    return-void

    .line 736
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    throw v2
.end method

.method public fullRestorePrivileged(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 5
    .parameter "fd"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1027
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1029
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1030
    if-eqz p1, :cond_0

    .line 1031
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1037
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/app/backup/IFullBackupRestoreObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1038
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    return-void

    .line 1035
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1042
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1042
    throw v2

    .line 1037
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 861
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 864
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    .local v2, _result:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    return-object v2

    .line 872
    .end local v2           #_result:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/content/Intent;
    goto :goto_0

    .line 876
    .end local v2           #_result:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 876
    throw v3
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 786
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 789
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 790
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 795
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 798
    return-object v2

    .line 795
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    throw v3
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 892
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 895
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 897
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 902
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 905
    return-object v2

    .line 902
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 902
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    const-string v0, "android.app.backup.IBackupManager"

    return-object v0
.end method

.method public hasBackupPassword()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 630
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 633
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 639
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 642
    return v2

    .line 639
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 639
    throw v3
.end method

.method public isBackupEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 581
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 584
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 590
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    return v2

    .line 590
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v3
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 807
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 810
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 813
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 816
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 819
    return-object v2

    .line 816
    .end local v2           #_result:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 816
    throw v3
.end method

.method public opComplete(I)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 956
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 958
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 967
    return-void

    .line 964
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    throw v2
.end method

.method public registerExternalTransport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packagename"
    .parameter "servicename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1061
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1063
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1066
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1067
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1073
    return-void

    .line 1070
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1070
    throw v2
.end method

.method public registerHtcTransport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 978
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 980
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 981
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 988
    return-void

    .line 985
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 985
    throw v2
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 490
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    return-void

    .line 497
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    throw v2
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "transport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 834
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 837
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 844
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 847
    return-object v2

    .line 844
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    throw v3
.end method

.method public setAutoRestore(Z)V
    .locals 5
    .parameter "doAutoRestore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 541
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 543
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return-void

    .line 549
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 5
    .parameter "isEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 513
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 515
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 516
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    return-void

    .line 521
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    throw v2
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "currentPw"
    .parameter "newPw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 605
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 608
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v3, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 616
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    return v2

    .line 616
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 616
    throw v3
.end method

.method public setBackupProvisioned(Z)V
    .locals 5
    .parameter "isProvisioned"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 561
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 563
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.app.backup.IBackupManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 564
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget-object v2, p0, Landroid/app/backup/IBackupManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 572
    return-void

    .line 569
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    throw v2
.end method
