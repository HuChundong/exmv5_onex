.class public Lcom/android/internal/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfCallerInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;,
        Lcom/android/internal/telephony/CallerInfo$Injector;
    }
.end annotation


# static fields
.field private static CONTACT_PRIORITY_ACCOUNT:I = 0x0

.field private static CONTACT_PRIORITY_DEFAULT:I = 0x0

.field private static CONTACT_PRIORITY_DEVICE_CONTACT:I = 0x0

.field private static CONTACT_PRIORITY_NAME:I = 0x0

.field private static CONTACT_PRIORITY_PHOTO:I = 0x0

.field private static CONTACT_PRIORITY_SIM_CONTACT:I = 0x0

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final VDBG:Z

.field private static sSkipVmCheck:Z


# instance fields
.field public OrigDialString:Ljava/lang/String;

.field public SN_icon:Landroid/graphics/drawable/Drawable;

.field public SN_label_clause:Ljava/lang/CharSequence;

.field public SN_status:Ljava/lang/String;

.field public SN_timestamp:Ljava/lang/Long;

.field public accountType:Ljava/lang/String;

.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public cachedPhotoIcon:Landroid/graphics/Bitmap;

.field public cachedPhotoSmall:Landroid/graphics/Bitmap;

.field public cachedRefPhotoBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field public cachedRefPhotoSmall:Landroid/graphics/Bitmap;

.field public cnapName:Ljava/lang/String;

.field public contactExists:Z

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public date:Ljava/lang/String;
.field public extra:Lmiui/telephony/ExtraCallerInfo;
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field public geoDescription:Ljava/lang/String;

.field public isCachedPhotoCurrent:Z

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public rawContactId:J

.field public recordNumber:J

.field public shouldSendToVoicemail:Z

.field public status_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 72
    const-string v0, "CallerInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    .line 252
    sput-boolean v1, Lcom/android/internal/telephony/CallerInfo;->sSkipVmCheck:Z

    .line 1064
    sput v1, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEFAULT:I

    .line 1065
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_ACCOUNT:I

    .line 1066
    sput v2, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_SIM_CONTACT:I

    .line 1067
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEVICE_CONTACT:I

    .line 1068
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_PHOTO:I

    .line 1069
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_NAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/telephony/ExtraCallerInfo;

    invoke-direct {v0}, Lmiui/telephony/ExtraCallerInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 257
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 259
    return-void
.end method

.method private static addMoreHtcInfoByCursor(Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "cursor"
    .parameter "info"

    .prologue
    const/4 v3, -0x1

    .line 1041
    const-string v1, "raw_contact_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1042
    .local v0, columnIndex:I
    if-eq v0, v3, :cond_0

    .line 1043
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    .line 1047
    :cond_0
    const-string v1, "status_update_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1048
    if-eq v0, v3, :cond_1

    .line 1049
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 1052
    :cond_1
    const-string v1, "account_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1053
    if-eq v0, v3, :cond_2

    .line 1054
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    .line 1055
    const-string v1, "com.anddroid.contacts.sim"

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1056
    const-string v1, "sourceid"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1057
    if-eq v0, v3, :cond_2

    .line 1058
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 1062
    :cond_2
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "previousResult"

    .prologue
    .line 480
    iget-boolean v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object p2

    .line 489
    .end local v0           #username:Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 509
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 510
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 512
    .local v0, callerID:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 513
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 515
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 516
    move-object v0, v2

    .line 522
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 518
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCallerIdAndPhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "number"
    .parameter "mNoPhotoResource"
    .parameter "view"

    .prologue
    .line 1272
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 1273
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    const/4 v0, 0x0

    .line 1274
    .local v0, callerID:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1276
    .local v4, personID:J
    if-eqz v1, :cond_0

    .line 1277
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1278
    .local v3, name:Ljava/lang/String;
    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1280
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1281
    move-object v0, v3

    .line 1282
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1283
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 1284
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1285
    .local v2, mUri:Landroid/net/Uri;
    invoke-static {v1, p0, p3, v2, p2}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 1296
    .end local v2           #mUri:Landroid/net/Uri;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1288
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1292
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .parameter "context"
    .parameter "contactRef"

    .prologue
    const/4 v2, 0x0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?limit=10"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 411
    .local v1, queryRef:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 270
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 271
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iput v6, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 272
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 273
    iput v10, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 274
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 275
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 276
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 277
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 280
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    .line 281
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 282
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    .line 283
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    .line 285
    sget-boolean v4, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "CallerInfo"

    const-string v7, "getCallerInfo() based on cursor..."

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, type:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 290
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    goto :cond_5
    if-eqz v4, :cond_3

    .line 291
    invoke-static {p0, p2, v1}, Lcom/android/internal/telephony/CallerInfo;->getHtcCallerInfoV2(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    .line 387
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_2
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 391
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 392
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 394
    return-object v1

    .line 292
    :cond_3
    const-string v4, "vnd.android.cursor.dir/htc_phone_lookup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 295
    invoke-static {p0, p2, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoHtcPhoneFilter(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 296
    :cond_4
    const-string v4, "vnd.android.cursor.dir/phone_equall"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 298
    invoke-static {p0, p2, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfoHtcPhoneFilter(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 301
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    const-string v4, "display_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, columnIndex:I
    if-eq v0, v10, :cond_6

    .line 311
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 315
    :cond_6
    invoke-static {p1}, Lcom/android/internal/telephony/CallerInfo$Injector;->setContactRef(Landroid/net/Uri;)V

    const-string v4, "number"

    invoke-static {p2, v4}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 316
    if-eq v0, v10, :cond_7

    .line 317
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 321
    :cond_7
    const-string v4, "normalized_number"

    invoke-static {p2, v4}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 322
    if-eq v0, v10, :cond_8

    .line 323
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 327
    :cond_8
    const-string v4, "label"

    invoke-static {p2, v4}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 328
    if-eq v0, v10, :cond_9

    .line 329
    const-string v4, "type"

    invoke-static {p2, v4}, Lcom/android/internal/telephony/CallerInfo$Injector;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 330
    .local v3, typeColumnIndex:I
    if-eq v3, v10, :cond_9

    .line 331
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 332
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 333
    iget v4, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v7, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v4, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 340
    .end local v3           #typeColumnIndex:I
    :cond_9
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 341
    if-eq v0, v10, :cond_d

    .line 342
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 343
    sget-boolean v4, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v4, :cond_a

    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> got info.person_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_a
    :goto_1
    const-string v4, "raw_contact_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 356
    if-eq v0, v10, :cond_b

    .line 357
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    .line 362
    :cond_b
    const-string v4, "status_update_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 363
    if-eq v0, v10, :cond_c

    .line 364
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 370
    :cond_c
    const-string v4, "custom_ringtone"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 371
    if-eq v0, v10, :cond_e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 372
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 379
    :goto_2
    const-string v4, "send_to_voicemail"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 380
    if-eq v0, v10, :cond_f

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_f

    move v4, v5

    :goto_3
    iput-boolean v4, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 382
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    invoke-static {p0, v1, p2}, Lmiui/telephony/ExtraCallerInfo;->getExtraCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)Lmiui/telephony/ExtraCallerInfo;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    goto/16 :goto_0

    .line 346
    :cond_d
    const-string v4, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find person_id column for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 374
    :cond_e
    iput-object v11, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_2

    :cond_f
    move v4, v6

    .line 380
    goto :goto_3
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 427
    sget-boolean v2, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CallerInfo"

    const-string v3, "getCallerInfo() based on number..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    const/4 v1, 0x0

    .line 465
    :cond_1
    :goto_0
    return-object v1

    .line 436
    :cond_2
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 438
    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0

    .line 447
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 451
    .local v0, contactUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 452
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 456
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 457
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 460
    :cond_5
    const-wide/16 v2, 0x0

    iget-wide v4, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "phoneType"

    .prologue
    .line 1333
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCallerInfoHtcPhoneFilter(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 962
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/CallerInfo;->gotoBestPosition(Landroid/database/Cursor;)I

    move-result v4

    if-eq v6, v4, :cond_4

    .line 967
    const-string v4, "display_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 968
    .local v0, columnIndex:I
    if-eq v0, v6, :cond_0

    .line 969
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 973
    :cond_0
    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 974
    if-eq v0, v6, :cond_1

    .line 975
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 979
    :cond_1
    const-string v4, "data2"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 980
    if-eq v0, v6, :cond_2

    .line 981
    const-string v4, "data3"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 983
    .local v2, labelColumnIndex:I
    if-eq v2, v6, :cond_2

    .line 984
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 985
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 986
    iget v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v5, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 993
    .end local v2           #labelColumnIndex:I
    :cond_2
    const-string v4, "contact_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 994
    if-eq v0, v6, :cond_3

    .line 995
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1000
    :cond_3
    const-string v4, "custom_ringtone"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1001
    if-eq v0, v6, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1002
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1009
    :goto_0
    const-string v4, "send_to_voicemail"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1010
    if-eq v0, v6, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_6

    :goto_1
    iput-boolean v3, p2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 1012
    const/4 v3, 0x1

    iput-boolean v3, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 1014
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CallerInfo;->addMoreHtcInfoByCursor(Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)V

    .line 1029
    .end local v0           #columnIndex:I
    :cond_4
    :goto_2
    return-object p2

    .line 1004
    .restart local v0       #columnIndex:I
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1022
    .end local v0           #columnIndex:I
    :catch_0
    move-exception v1

    .line 1026
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CallerInfo"

    const-string v4, "getCallerInfoHtcPhoneFilter"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1010
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #columnIndex:I
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCallerPersonId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    .line 1250
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1251
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    const-wide/16 v0, 0x0

    .line 1253
    .local v0, callerID:J
    if-eqz v2, :cond_0

    .line 1254
    iget-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1257
    :cond_0
    return-wide v0
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    .line 668
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, url:Ljava/lang/String;
    const/4 v1, 0x0

    .line 676
    .local v1, columnName:Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 679
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallerInfo"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    const-string v1, "contact_id"

    .line 696
    :goto_0
    if-eqz v1, :cond_8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 697
    .local v0, columnIndex:I
    :goto_1
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (columnIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for person_id lookup..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2
    return v0

    .line 681
    .end local v0           #columnIndex:I
    :cond_3
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 684
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "CallerInfo"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_4
    const-string v1, "contact_id"

    goto :goto_0

    .line 687
    :cond_5
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 691
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "CallerInfo"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_6
    const-string v1, "_id"

    goto :goto_0

    .line 694
    :cond_7
    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    :cond_8
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 760
    const-string v2, "country_detector"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 762
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, countryIso:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 765
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 766
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 724
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 750
    :cond_1
    :goto_0
    return-object v1

    .line 730
    :cond_2
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 731
    .local v6, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 733
    .local v3, geocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 734
    .local v4, locale:Ljava/util/Locale;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, countryIso:Ljava/lang/String;
    const/4 v5, 0x0

    .line 737
    .local v5, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_3

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' for countryIso \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_3
    invoke-virtual {v6, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 740
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_4

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- parsed number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :cond_4
    :goto_1
    if-eqz v5, :cond_1

    .line 746
    invoke-virtual {v3, v5, v4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, description:Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v7, :cond_1

    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- got description: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 741
    .end local v1           #description:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 742
    .local v2, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    const-string v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getHtcCallerInfoV2(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 878
    if-eqz p1, :cond_6

    .line 879
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 883
    const-string v2, "display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 884
    .local v0, columnIndex:I
    if-eq v0, v6, :cond_0

    .line 885
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 889
    :cond_0
    const-string v2, "data1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 890
    if-eq v0, v6, :cond_1

    .line 891
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 895
    :cond_1
    const-string v2, "data3"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 896
    if-eq v0, v6, :cond_2

    .line 897
    const-string v2, "data2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 898
    .local v1, typeColumnIndex:I
    if-eq v1, v6, :cond_2

    .line 899
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 900
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 901
    iget v2, p2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v4, p2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v2, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 908
    .end local v1           #typeColumnIndex:I
    :cond_2
    const-string v2, "contact_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 909
    if-eq v0, v6, :cond_3

    .line 910
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 915
    :cond_3
    const-string v2, "raw_contact_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 916
    if-eq v0, v6, :cond_4

    .line 917
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->rawContactId:J

    .line 922
    :cond_4
    const-string v2, "status_update_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 923
    if-eq v0, v6, :cond_5

    .line 924
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 930
    :cond_5
    const-string v2, "custom_ringtone"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 931
    if-eq v0, v6, :cond_7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 932
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 939
    :goto_0
    const-string v2, "send_to_voicemail"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 940
    if-eq v0, v6, :cond_8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 942
    iput-boolean v3, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 946
    .end local v0           #columnIndex:I
    :cond_6
    return-object p2

    .line 934
    .restart local v0       #columnIndex:I
    :cond_7
    const/4 v2, 0x0

    iput-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_0

    .line 940
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .parameter "context"
    .parameter "contactRef"

    .prologue
    const/4 v2, 0x0

    .line 1159
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1160
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1163
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 8
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1177
    new-instance v1, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 1178
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    iput v5, v1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1179
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1180
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 1181
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 1182
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 1183
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 1185
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 1187
    sget-boolean v3, Lcom/android/internal/telephony/CallerInfo;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    const-string v4, "construct callerInfo from cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    const-string v3, "CallerInfo"

    const-string v4, "getSIMCallerInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-eqz p2, :cond_4

    .line 1193
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1198
    const-string v3, "name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1199
    .local v0, columnIndex:I
    if-eq v0, v7, :cond_1

    .line 1200
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1204
    :cond_1
    const-string v3, "number"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1205
    if-eq v0, v7, :cond_2

    .line 1206
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1211
    :cond_2
    iput-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 1215
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 1218
    const-string v3, "recordNumber"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1220
    if-eq v0, v7, :cond_3

    .line 1222
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 1228
    .end local v0           #columnIndex:I
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "closeCursorThread"

    invoke-direct {v2, v1, v3, p2}, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;-><init>(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1229
    .local v2, thread:Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;
    if-eqz v2, :cond_4

    .line 1230
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;->start()V

    .line 1235
    .end local v2           #thread:Lcom/android/internal/telephony/CallerInfo$CloseCursorThread;
    :cond_4
    iput-boolean v5, v1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 1236
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1237
    iput-object p1, v1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 1238
    return-object v1
.end method

.method private static gotoBestPosition(Landroid/database/Cursor;)I
    .locals 15
    .parameter "cursor"

    .prologue
    .line 1091
    const/4 v0, -0x1

    .line 1093
    .local v0, bestPosition:I
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1095
    const-string v11, "account_type"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1096
    .local v10, typeIdx:I
    const-string v11, "photo_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1097
    .local v6, photoIdx:I
    const-string v11, "display_name"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1098
    .local v3, nameIdx:I
    const-string v11, "data1"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1100
    .local v5, numberIdx:I
    const/4 v1, 0x0

    .line 1101
    .local v1, count:I
    sget v9, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEFAULT:I

    .line 1103
    .local v9, topPriority:I
    :cond_0
    sget v8, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEFAULT:I

    .line 1104
    .local v8, priority:I
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 1105
    .local v7, position:I
    const/4 v11, -0x1

    if-eq v11, v10, :cond_2

    .line 1106
    sget v11, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_ACCOUNT:I

    or-int/2addr v8, v11

    .line 1107
    const/4 v11, -0x1

    if-eq v11, v3, :cond_1

    const/4 v11, -0x1

    if-eq v11, v5, :cond_1

    .line 1108
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1109
    .local v2, name:Ljava/lang/String;
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1110
    .local v4, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1112
    sget v11, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_NAME:I

    or-int/2addr v8, v11

    .line 1115
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    const-string v11, "com.anddroid.contacts.sim"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1116
    sget v11, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_DEVICE_CONTACT:I

    or-int/2addr v8, v11

    .line 1118
    const/4 v11, -0x1

    if-eq v11, v6, :cond_2

    const-wide/16 v11, 0x0

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_2

    .line 1119
    sget v11, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_PHOTO:I

    or-int/2addr v8, v11

    .line 1127
    :cond_2
    :goto_0
    if-le v8, v9, :cond_3

    .line 1128
    move v0, v7

    .line 1129
    move v9, v8

    .line 1137
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1138
    invoke-interface {p0}, Landroid/database/Cursor;->isLast()Z

    move-result v11

    if-nez v11, :cond_4

    const/16 v11, 0xa

    if-le v11, v1, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1145
    .end local v1           #count:I
    .end local v3           #nameIdx:I
    .end local v5           #numberIdx:I
    .end local v6           #photoIdx:I
    .end local v7           #position:I
    .end local v8           #priority:I
    .end local v9           #topPriority:I
    .end local v10           #typeIdx:I
    :cond_4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1147
    return v0

    .line 1123
    .restart local v1       #count:I
    .restart local v3       #nameIdx:I
    .restart local v5       #numberIdx:I
    .restart local v6       #photoIdx:I
    .restart local v7       #position:I
    .restart local v8       #priority:I
    .restart local v9       #topPriority:I
    .restart local v10       #typeIdx:I
    :cond_5
    sget v11, Lcom/android/internal/telephony/CallerInfo;->CONTACT_PRIORITY_SIM_CONTACT:I

    or-int/2addr v8, v11

    goto :goto_0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 618
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 621
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "data"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedPhotoSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCachedRefPhotoSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->OrigDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()J
    .locals 2

    .prologue
    .line 1457
    iget-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    return-wide v0
.end method

.method public getSnIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSnLabelClause()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSnStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    return-object v0
.end method

.method public getSnTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 1447
    iget-wide v0, p0, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    return-wide v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 851
    const/4 v0, 0x0

    .line 852
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x10402fa

    .line 555
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 559
    :try_start_0
    const-string v2, "com.htc"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 560
    .local v1, htcContext:Landroid/content/Context;
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v2, :cond_0

    .line 563
    const v2, 0x10402fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v1           #htcContext:Landroid/content/Context;
    :goto_0
    const v2, 0x1080447

    iput v2, p0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 582
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsEmergency:Z

    .line 583
    return-object p0

    .line 568
    .restart local v1       #htcContext:Landroid/content/Context;
    :cond_0
    const v2, 0x204018f

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 571
    .end local v1           #htcContext:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 573
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "CallerInfo"

    const-string v3, "unable to find htcContext."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 579
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method markAsVoiceMail()Lcom/android/internal/telephony/CallerInfo;
    .locals 4

    .prologue
    .line 597
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 600
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, voiceMailLabel:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v1           #voiceMailLabel:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 603
    :catch_0
    move-exception v0

    .line 609
    .local v0, se:Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method markAsVoiceMail(Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4
    .parameter "number"

    .prologue
    .line 1311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallerInfo;->mIsVoiceMail:Z

    .line 1314
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, voiceMailLabel:Ljava/lang/String;
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1316
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1317
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    .end local v1           #voiceMailLabel:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1318
    :catch_0
    move-exception v0

    .line 1324
    .local v0, se:Ljava/lang/SecurityException;
    const-string v2, "CallerInfo"

    const-string v3, "Cannot access VoiceMail."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 864
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    .line 1463
    return-void
.end method

.method public setCachedPhotoSmall(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    .line 1423
    return-void
.end method

.method public setCachedRefPhotoSamll(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    .line 1433
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    .line 1363
    return-void
.end method

.method public setOrigDialString(Ljava/lang/String;)V
    .locals 0
    .parameter "dialString"

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->OrigDialString:Ljava/lang/String;

    .line 1413
    return-void
.end method

.method public setRecordNumber(J)V
    .locals 0
    .parameter "number"

    .prologue
    .line 1452
    iput-wide p1, p0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    .line 1453
    return-void
.end method

.method public setSnIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    .line 1373
    return-void
.end method

.method public setSnLabelClause(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "clause"

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    .line 1383
    return-void
.end method

.method public setSnStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    .line 1393
    return-void
.end method

.method public setSnTimestamp(Ljava/lang/Long;)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    .line 1403
    return-void
.end method

.method public setStatusId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1442
    iput-wide p1, p0, Lcom/android/internal/telephony/CallerInfo;->status_id:J

    .line 1443
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 817
    .local v0, VERBOSE_DEBUG:Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", phoneNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "non-null"

    goto :goto_0

    :cond_1
    const-string v1, "non-null"

    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "fallbackNumber"

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 716
    .local v0, number:Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 717
    return-void

    .line 715
    .end local v0           #number:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method
