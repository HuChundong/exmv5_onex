.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    .line 361
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 513
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 514
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 516
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.content.IContentProvider"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 519
    .local v2, operation:Landroid/content/ContentProviderOperation;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 528
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v5

    .line 521
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 523
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    .line 524
    sget-object v5, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .local v4, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 526
    return-object v4
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 493
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 495
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 498
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 500
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 502
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 503
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 506
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 504
    return v0

    .line 506
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 506
    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "method"
    .parameter "request"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 626
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 628
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 634
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 636
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 637
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 640
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 641
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 638
    return-object v0

    .line 640
    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 641
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 640
    throw v3
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 692
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 694
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 699
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 700
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 704
    .local v0, cancellationSignal:Landroid/os/ICancellationSignal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 705
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 702
    return-object v0

    .line 704
    .end local v0           #cancellationSignal:Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 705
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 704
    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 536
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 538
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 541
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 546
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 547
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 550
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 548
    return v0

    .line 550
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 550
    throw v3
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "mimeTypeFilter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 648
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 650
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 652
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 653
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 657
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 658
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 661
    .local v1, out:[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 662
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 659
    return-object v1

    .line 661
    .end local v1           #out:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 662
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 661
    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 453
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 455
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 459
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 461
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 462
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 465
    .local v1, out:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 463
    return-object v1

    .line 465
    .end local v1           #out:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 465
    throw v3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 473
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 475
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 478
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 480
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 482
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 483
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .local v1, out:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    return-object v1

    .line 486
    .end local v1           #out:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw v3
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 603
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 605
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 612
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 613
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 614
    .local v2, has:I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 618
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 616
    return-object v1

    .line 614
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 618
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 618
    throw v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 581
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 583
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 586
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 590
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 591
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 592
    .local v2, has:I
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 595
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 593
    return-object v1

    .line 592
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 595
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 595
    throw v4
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 669
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 671
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 674
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 677
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 679
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 680
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .local v2, has:I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 685
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 683
    return-object v1

    .line 681
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 685
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 685
    throw v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    const-string v0, "ContentProviderProxy"

    const-string/jumbo v1, "no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 12
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v1, Landroid/database/BulkCursorToCursorAdaptor;

    invoke-direct {v1}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 380
    .local v1, adaptor:Landroid/database/BulkCursorToCursorAdaptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 381
    .local v3, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 383
    .local v8, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v9, "android.content.IContentProvider"

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    const/4 v9, 0x0

    invoke-virtual {p1, v3, v9}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 386
    const/4 v7, 0x0

    .line 387
    .local v7, length:I
    if-eqz p2, :cond_0

    .line 388
    array-length v7, p2

    .line 390
    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 392
    aget-object v9, p2, v6

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    if-eqz p4, :cond_2

    .line 396
    move-object/from16 v0, p4

    array-length v7, v0

    .line 400
    :goto_1
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_3

    .line 402
    aget-object v9, p4, v6

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 398
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 404
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 406
    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :goto_3
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 409
    const/4 v9, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v10

    if-ne v9, v10, :cond_5

    .line 410
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 413
    .local v4, elem:[Ljava/lang/StackTraceElement;
    array-length v9, v4

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v6, 0x0

    :goto_4
    array-length v9, v4

    if-ge v6, v9, :cond_5

    .line 415
    aget-object v9, v4, v6

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 406
    .end local v4           #elem:[Ljava/lang/StackTraceElement;
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 421
    :cond_5
    iget-object v9, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v9, v10, v3, v8, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 423
    invoke-static {v8}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 425
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 426
    sget-object v9, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/BulkCursorDescriptor;

    .line 427
    .local v2, d:Landroid/database/BulkCursorDescriptor;
    invoke-virtual {v1, v2}, Landroid/database/BulkCursorToCursorAdaptor;->initialize(Landroid/database/BulkCursorDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    .end local v2           #d:Landroid/database/BulkCursorDescriptor;
    :goto_5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 437
    return-object v1

    .line 430
    :cond_6
    :try_start_1
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_7

    .line 431
    const-string v9, "ContentProviderProxy"

    const-string v10, "bulkCursor: null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_7
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    const/4 v1, 0x0

    goto :goto_5

    .line 438
    .end local v6           #i:I
    .end local v7           #length:I
    :catch_0
    move-exception v5

    .line 439
    .local v5, ex:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 440
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    .end local v5           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 445
    throw v9

    .line 441
    :catch_1
    move-exception v5

    .line 442
    .local v5, ex:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 443
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 558
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 560
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 563
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 564
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 569
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 570
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 573
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 571
    return v0

    .line 573
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 573
    throw v3
.end method
