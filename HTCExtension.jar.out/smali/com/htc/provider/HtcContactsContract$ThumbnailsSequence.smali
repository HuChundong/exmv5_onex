.class public final Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThumbnailsSequence"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/thumbnails_sequence"

.field public static final CONTENT_ITEM_TYPE_RAW:Ljava/lang/String; = "vnd.android.cursor.item/thumbnails_sequence-raw_contact"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/thumbnails_sequence"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EMPTY:I = 0x0

.field public static final FILE_PREFIX:Ljava/lang/String; = "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

#the value of this static final field might be set in the static constructor
.field public static final ICON_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IS_FULLHD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_HD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_QHD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_QVGA:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_WVGA:Z = false

.field public static final OVERLAY_ICON:Ljava/lang/String; = "overlay_icon"

.field public static final SIZE_FULLHD:I = 0xb2

.field public static final SIZE_HD:I = 0x5a

.field public static final SIZE_HVGA:I = 0x30

.field public static final SIZE_QHD:I = 0x48

.field public static final SIZE_QVGA:I = 0x28

.field public static final SIZE_WVGA:I = 0x48

.field public static final TABLE_NAME:Ljava/lang/String; = "thumbnails_sequence"

.field public static final THUMBNAIL_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v4, 0x48

    const/16 v5, 0x30

    const/16 v3, 0x28

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1669
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v6, "thumbnails_sequence"

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->CONTENT_URI:Landroid/net/Uri;

    .line 1698
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x60

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x8

    if-eq v0, v6, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xc

    if-ne v0, v6, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QVGA:Z

    .line 1704
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x19

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x40

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x79

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7a

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x9

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x5a

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xa8

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x20

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x91

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x61

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x93

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xa9

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xaa

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x94

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x3c

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x3d

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x1c

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7c

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x21

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x22

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xf

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x9d

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x70

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x8a

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xdf

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe2

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe3

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe4

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe5

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x11

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x12

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x13

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x53

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x54

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x55

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x240

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x23f

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x241

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x242

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x65

    if-eq v0, v6, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x66

    if-ne v0, v6, :cond_7

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_WVGA:Z

    .line 1756
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7b

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x95

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x96

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x88

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x3e

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x50

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x7d

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x89

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x9f

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x2b

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe1

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe0

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x2d7

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x2d8

    if-eq v0, v6, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x2aa

    if-ne v0, v6, :cond_8

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QHD:Z

    .line 1775
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xad

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x25

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x26

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x24

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x49

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x4a

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x146

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x147

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x149

    if-eq v0, v6, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x43

    if-ne v0, v6, :cond_9

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_HD:Z

    .line 1788
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x1d

    if-eq v0, v6, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x1e

    if-eq v0, v6, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x1f

    if-eq v0, v6, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x12d

    if-eq v0, v6, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x12f

    if-ne v0, v6, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    sput-boolean v1, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_FULLHD:Z

    .line 1828
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_FULLHD:Z

    if-eqz v0, :cond_a

    const/16 v0, 0xb2

    :goto_4
    sput v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    return-void

    :cond_6
    move v0, v1

    .line 1698
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1704
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 1756
    goto :goto_2

    :cond_9
    move v0, v1

    .line 1775
    goto :goto_3

    .line 1828
    :cond_a
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QVGA:Z

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_4

    :cond_b
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_WVGA:Z

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_4

    :cond_c
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_QHD:Z

    if-eqz v0, :cond_d

    move v0, v4

    goto :goto_4

    :cond_d
    sget-boolean v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->IS_HD:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x5a

    goto :goto_4

    :cond_e
    move v0, v5

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1651
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .parameter "contactId"
    .parameter "cr"

    .prologue
    const/4 v3, 0x0

    .line 1923
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v0

    .line 1926
    .local v2, PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "thumbnails_sequence"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1928
    .local v7, uriPrefix:Landroid/net/Uri;
    invoke-static {v7, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, thumbnailUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v4, v3

    move-object v5, v3

    .line 1929
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1930
    .local v6, matchCursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private static getJpgThumbnailName(J)Ljava/lang/String;
    .locals 2
    .parameter "_id"

    .prologue
    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1970
    .local v0, fileName:Ljava/lang/StringBuilder;
    const-string v1, "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1972
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    const/4 v2, 0x0

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "thumbnails_sequence"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1940
    .local v7, uriPrefix:Landroid/net/Uri;
    invoke-static {v7, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, thumbnailUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1941
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1942
    .local v6, matchCursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getThumbnailName(J)Ljava/lang/String;
    .locals 2
    .parameter "_id"

    .prologue
    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1846
    .local v0, fileName:Ljava/lang/StringBuilder;
    const-string v1, "/data/data/com.android.providers.contacts/files/thumbnail_photo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1848
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final getThumbnailSize()I
    .locals 2

    .prologue
    .line 1996
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x60

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1998
    :cond_0
    const/16 v0, 0x28

    .line 2003
    :goto_0
    return v0

    .line 1999
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    .line 2001
    :cond_2
    const/16 v0, 0x46

    goto :goto_0

    .line 2003
    :cond_3
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public static loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "contactId"
    .parameter "opts"
    .parameter "cr"

    .prologue
    .line 1862
    invoke-static {p0, p1, p3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getContactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1863
    .local v0, matchCursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1864
    .local v1, thumbnailId:J
    if-eqz v0, :cond_1

    .line 1865
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1866
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1869
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1872
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1873
    invoke-static {v1, v2, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1875
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "source"
    .parameter "opts"

    .prologue
    .line 1984
    const/4 v0, 0x0

    .line 1985
    .local v0, result:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1991
    :goto_0
    return-object v0

    .line 1988
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadRawContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "rawContactId"
    .parameter "opts"
    .parameter "cr"

    .prologue
    .line 1880
    invoke-static {p0, p1, p3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1881
    .local v0, matchCursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1882
    .local v1, thumbnailId:J
    if-eqz v0, :cond_1

    .line 1883
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1884
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1887
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1891
    invoke-static {v1, v2, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1893
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static loadRawContactThumbnailId(JLandroid/content/ContentResolver;)J
    .locals 4
    .parameter "rawContactId"
    .parameter "cr"

    .prologue
    .line 1898
    invoke-static {p0, p1, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getRawcontactThumbnailCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1899
    .local v0, matchCursor:Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 1900
    .local v1, thumbnailId:J
    if-eqz v0, :cond_1

    .line 1901
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1902
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1905
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1908
    :cond_1
    return-wide v1
.end method

.method public static loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "thumbnailId"
    .parameter "opts"

    .prologue
    .line 1953
    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getThumbnailName(J)Ljava/lang/String;

    move-result-object v1

    .line 1954
    .local v1, imagePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1955
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1956
    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->getJpgThumbnailName(J)Ljava/lang/String;

    move-result-object v1

    .line 1958
    :cond_0
    const/4 v0, 0x0

    .line 1959
    invoke-static {v1, p2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadImageFromFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
