.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .parameter "obj"

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 74
    .local v0, in:Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/ContentProviderProxy;

    .end local v0           #in:Landroid/content/IContentProvider;
    invoke-direct {v0, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 351
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 40
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 346
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 95
    :pswitch_1
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 100
    .local v5, url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 101
    .local v23, num:I
    const/4 v6, 0x0

    .line 102
    .local v6, projection:[Ljava/lang/String;
    if-lez v23, :cond_0

    .line 103
    move/from16 v0, v23

    new-array v6, v0, [Ljava/lang/String;

    .line 104
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v18

    .line 104
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 110
    .end local v18           #i:I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 112
    const/4 v8, 0x0

    .line 113
    .local v8, selectionArgs:[Ljava/lang/String;
    if-lez v23, :cond_1

    .line 114
    move/from16 v0, v23

    new-array v8, v0, [Ljava/lang/String;

    .line 115
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v18

    .line 115
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 120
    .end local v18           #i:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, sortOrder:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v25

    .line 123
    .local v25, observer:Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v10

    .line 127
    .local v10, cancellationSignal:Landroid/os/ICancellationSignal;
    const/16 v35, 0x0

    .line 128
    .local v35, tid:I
    const/4 v4, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v39

    move/from16 v0, v39

    if-ne v4, v0, :cond_3

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 130
    .local v29, rPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 131
    .local v30, rTid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 132
    const/16 v33, 0x0

    .line 133
    .local v33, stackTrace:[Ljava/lang/String;
    if-lez v23, :cond_2

    .line 134
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    .line 135
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v33, v18

    .line 135
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 139
    .end local v18           #i:I
    :cond_2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v35

    .line 140
    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v35

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->storeRemoteTrace(III[Ljava/lang/String;)V

    .end local v29           #rPid:I
    .end local v30           #rTid:I
    .end local v33           #stackTrace:[Ljava/lang/String;
    :cond_3
    move-object/from16 v4, p0

    .line 143
    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderNative;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 145
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_5

    .line 146
    new-instance v11, Landroid/database/CursorToBulkCursorAdaptor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v11, v14, v0, v4}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V

    .line 148
    .local v11, adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    invoke-virtual {v11}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;

    move-result-object v15

    .line 150
    .local v15, d:Landroid/database/BulkCursorDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v4}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 159
    .end local v11           #adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    .end local v15           #d:Landroid/database/BulkCursorDescriptor;
    :goto_4
    const/4 v4, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v39

    move/from16 v0, v39

    if-ne v4, v0, :cond_4

    .line 160
    invoke-static/range {v35 .. v35}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->removeIfNotUsed(I)V

    .line 164
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 154
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 341
    .end local v5           #url:Landroid/net/Uri;
    .end local v6           #projection:[Ljava/lang/String;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v9           #sortOrder:Ljava/lang/String;
    .end local v10           #cancellationSignal:Landroid/os/ICancellationSignal;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v23           #num:I
    .end local v25           #observer:Landroid/database/IContentObserver;
    .end local v35           #tid:I
    :catch_0
    move-exception v16

    .line 342
    .local v16, e:Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 343
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 169
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 171
    .restart local v5       #url:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v36

    .line 172
    .local v36, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 180
    .end local v5           #url:Landroid/net/Uri;
    .end local v36           #type:Ljava/lang/String;
    :pswitch_3
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 182
    .restart local v5       #url:Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ContentValues;

    .line 184
    .local v38, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v28

    .line 185
    .local v28, out:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 187
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 192
    .end local v5           #url:Landroid/net/Uri;
    .end local v28           #out:Landroid/net/Uri;
    .end local v38           #values:Landroid/content/ContentValues;
    :pswitch_4
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 194
    .restart local v5       #url:Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Landroid/content/ContentValues;

    .line 196
    .local v38, values:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v13

    .line 197
    .local v13, count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 204
    .end local v5           #url:Landroid/net/Uri;
    .end local v13           #count:I
    .end local v38           #values:[Landroid/content/ContentValues;
    :pswitch_5
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 206
    .local v24, numOperations:I
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v26, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 209
    sget-object v4, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 208
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 211
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v32

    .line 212
    .local v32, results:[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 214
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 219
    .end local v18           #i:I
    .end local v24           #numOperations:I
    .end local v26           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v32           #results:[Landroid/content/ContentProviderResult;
    :pswitch_6
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 221
    .restart local v5       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 222
    .restart local v7       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 224
    .restart local v8       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/ContentProviderNative;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 226
    .restart local v13       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 233
    .end local v5           #url:Landroid/net/Uri;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v13           #count:I
    :pswitch_7
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 235
    .restart local v5       #url:Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ContentValues;

    .line 236
    .local v38, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 237
    .restart local v7       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 239
    .restart local v8       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/content/ContentProviderNative;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 241
    .restart local v13       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 248
    .end local v5           #url:Landroid/net/Uri;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v13           #count:I
    .end local v38           #values:Landroid/content/ContentValues;
    :pswitch_8
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 250
    .restart local v5       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 253
    .local v22, mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 254
    .local v17, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v17, :cond_7

    .line 256
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 262
    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 260
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 267
    .end local v5           #url:Landroid/net/Uri;
    .end local v17           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v22           #mode:Ljava/lang/String;
    :pswitch_9
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 269
    .restart local v5       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 272
    .restart local v22       #mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v17

    .line 273
    .local v17, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v17, :cond_8

    .line 275
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 281
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 279
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 286
    .end local v5           #url:Landroid/net/Uri;
    .end local v17           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v22           #mode:Ljava/lang/String;
    :pswitch_a
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 289
    .local v19, method:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 290
    .local v34, stringArg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 292
    .local v12, args:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v12}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v31

    .line 294
    .local v31, responseBundle:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 296
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 301
    .end local v12           #args:Landroid/os/Bundle;
    .end local v19           #method:Ljava/lang/String;
    .end local v31           #responseBundle:Landroid/os/Bundle;
    .end local v34           #stringArg:Ljava/lang/String;
    :pswitch_b
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 303
    .restart local v5       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 304
    .local v21, mimeTypeFilter:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 305
    .local v37, types:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 308
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 313
    .end local v5           #url:Landroid/net/Uri;
    .end local v21           #mimeTypeFilter:Ljava/lang/String;
    .end local v37           #types:[Ljava/lang/String;
    :pswitch_c
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 315
    .restart local v5       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 316
    .local v20, mimeType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v27

    .line 319
    .local v27, opts:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v17

    .line 320
    .restart local v17       #fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v17, :cond_9

    .line 322
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 328
    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 326
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 333
    .end local v5           #url:Landroid/net/Uri;
    .end local v17           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v20           #mimeType:Ljava/lang/String;
    .end local v27           #opts:Landroid/os/Bundle;
    :pswitch_d
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v10

    .line 336
    .restart local v10       #cancellationSignal:Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-interface {v10}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
