.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS_FIELDS:[I = null

.field private static final ADDRESS_FIELDS_VZW_NGM:[I = null

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOGV:Z = true

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_EXTRAURI:I = 0x9

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_COLUMN_VCALE:I = 0xb

.field private static final PART_COLUMN_VCALS:I = 0xa

.field private static final PART_PROJECTION:[Ljava/lang/String; = null

.field private static final PART_PROJECTION_HERO:[Ljava/lang/String; = null

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache; = null

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PHONE_TYPE:I = 0x1b

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final isVzwNGMProject:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x4

    .line 79
    const-class v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    .line 107
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 115
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS_VZW_NGM:[I

    .line 122
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "msg_box"

    aput-object v3, v0, v1

    const-string v3, "thread_id"

    aput-object v3, v0, v7

    const-string v3, "retr_txt"

    aput-object v3, v0, v6

    const-string v3, "sub"

    aput-object v3, v0, v5

    const/4 v3, 0x5

    const-string v4, "ct_l"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "ct_t"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "m_cls"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "m_id"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "resp_txt"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "tr_id"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "ct_cls"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "d_rpt"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "m_type"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "v"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "pri"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "rr"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "read_status"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "rpt_a"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "retr_st"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "st"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "date"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "d_tm"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "exp"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "m_size"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "sub_cs"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "retr_txt_cs"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "phone_type"

    #aput-object v4, v0, v3

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 182
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "chset"

    aput-object v3, v0, v1

    const-string v3, "cd"

    aput-object v3, v0, v7

    const-string v3, "cid"

    aput-object v3, v0, v6

    const-string v3, "cl"

    aput-object v3, v0, v5

    const/4 v3, 0x5

    const-string v4, "ct"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "fn"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "name"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "text"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "ExtraUri"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "vCALs"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "vCALe"

    aput-object v4, v0, v3

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION_HERO:[Ljava/lang/String;

    .line 200
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "chset"

    aput-object v2, v0, v1

    const-string v2, "cd"

    aput-object v2, v0, v7

    const-string v2, "cid"

    aput-object v2, v0, v6

    const-string v2, "cl"

    aput-object v2, v0, v5

    const/4 v2, 0x5

    const-string v3, "ct"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "fn"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "name"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "text"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 243
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 249
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 253
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 258
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 262
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 267
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 275
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 284
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 296
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 309
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 315
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 321
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto/16 :goto_0

    .line 107
    nop

    :array_0
    .array-data 0x4
        0x81t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_1
    .array-data 0x4
        0x89t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 335
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 336
    .local v0, version:F
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    float-to-double v1, v0

    const-wide/high16 v3, 0x400c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 338
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    goto :goto_0
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1182
    const/4 v8, 0x0

    .line 1183
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1184
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 1185
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1187
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 1216
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 1189
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1190
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1192
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1193
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1194
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1196
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1198
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1199
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :catch_0
    move-exception v7

    .line 1205
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1208
    :cond_5
    throw v0

    .line 1202
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1203
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 1208
    if-eqz v6, :cond_1

    .line 1209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1213
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pathIndex:I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 401
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "data"

    .prologue
    .line 2082
    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2086
    :goto_0
    return-object v1

    .line 2083
    :catch_0
    move-exception v0

    .line 2085
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2086
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 394
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "context"

    .prologue
    .line 346
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 350
    :cond_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .locals 12
    .parameter "msgId"
    .parameter "headers"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 641
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v10

    const-string v5, "charset"

    aput-object v5, v3, v6

    const-string v5, "type"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 646
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 648
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 650
    .local v7, addr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 652
    .local v8, addrType:I
    sparse-switch v8, :sswitch_data_0

    .line 666
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 672
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 654
    .restart local v7       #addr:Ljava/lang/String;
    .restart local v8       #addrType:I
    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    goto :goto_0

    .line 661
    :sswitch_1
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 672
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 675
    :cond_2
    return-void

    .line 652
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 45
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v14, 0x0

    .line 409
    .local v14, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/part"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 413
    const/16 v40, 0x0

    .line 416
    .local v40, parts:[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v14, :cond_0

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 418
    :cond_0
    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadParts("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): no part to load."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    const/4 v3, 0x0

    .line 632
    if-eqz v14, :cond_1

    .line 633
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_1
    :goto_0
    return-object v3

    .line 423
    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v34

    .line 424
    .local v34, partCount:I
    const/16 v37, 0x0

    .line 425
    .local v37, partIdx:I
    move/from16 v0, v34

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v40, v0

    move/from16 v38, v37

    .line 426
    .end local v37           #partIdx:I
    .local v38, partIdx:I
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 427
    new-instance v33, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v33 .. v33}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 428
    .local v33, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v15

    .line 430
    .local v15, charset:Ljava/lang/Integer;
    if-eqz v15, :cond_3

    .line 431
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 434
    :cond_3
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 436
    .local v16, contentDisposition:[B
    if-eqz v16, :cond_4

    .line 437
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 440
    :cond_4
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 442
    .local v17, contentId:[B
    if-eqz v17, :cond_5

    .line 443
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 446
    :cond_5
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v18

    .line 448
    .local v18, contentLocation:[B
    if-eqz v18, :cond_6

    .line 449
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 452
    :cond_6
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v19

    .line 454
    .local v19, contentType:[B
    if-eqz v19, :cond_15

    .line 455
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    if-eqz v19, :cond_8

    .line 463
    :try_start_2
    const-string v10, "text/x-vcal"

    .line 464
    .local v10, TEXT_VCALENDAR_TOPAZ:Ljava/lang/String;
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 465
    .local v20, ct:Ljava/lang/String;
    const/16 v41, 0x0

    .line 467
    .local v41, replace:Ljava/lang/String;
    const-string v3, "text/x-vcal"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 468
    const-string v41, "text/x-vCalendar"

    .line 471
    :cond_7
    if-eqz v41, :cond_8

    .line 472
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 473
    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replace CT ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 482
    .end local v10           #TEXT_VCALENDAR_TOPAZ:Ljava/lang/String;
    .end local v20           #ct:Ljava/lang/String;
    .end local v41           #replace:Ljava/lang/String;
    :cond_8
    :goto_2
    :try_start_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x78

    if-eq v3, v4, :cond_9

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v4, 0x59

    if-ne v3, v4, :cond_b

    .line 486
    :cond_9
    :try_start_4
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 487
    .restart local v20       #ct:Ljava/lang/String;
    if-eqz v18, :cond_b

    invoke-static/range {v20 .. v20}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 488
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 489
    .local v23, filename:Ljava/lang/String;
    if-eqz v23, :cond_b

    .line 490
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_a

    .line 491
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 493
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 494
    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replace CT ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 503
    .end local v20           #ct:Ljava/lang/String;
    .end local v23           #filename:Ljava/lang/String;
    :cond_b
    :goto_3
    const/4 v3, 0x6

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v22

    .line 505
    .local v22, fileName:[B
    if-eqz v22, :cond_c

    .line 506
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 510
    :cond_c
    const/4 v3, 0x5

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 511
    .restart local v20       #ct:Ljava/lang/String;
    const-string v3, "text/x-vCalendar"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "text/x-vCard"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "image/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    const-string v3, "audio/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    const-string v3, "video/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    .line 517
    :cond_d
    const/4 v3, 0x7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 518
    const/4 v3, 0x7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    .line 519
    .local v32, name:[B
    if-eqz v32, :cond_e

    .line 520
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 532
    .end local v32           #name:[B
    :cond_e
    :goto_4
    goto/16 :cond_11
    const/16 v3, 0x9

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 533
    .local v27, mExtraUri:Ljava/lang/String;
    if-eqz v27, :cond_f

    .line 534
    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 535
    .local v26, mEUri:Landroid/net/Uri;
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setExtraUri(Landroid/net/Uri;)V

    .line 538
    .end local v26           #mEUri:Landroid/net/Uri;
    :cond_f
    const/16 v3, 0xa

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 539
    .local v30, mVals:J
    new-instance v42, Ljava/lang/Long;

    move-object/from16 v0, v42

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 540
    .local v42, temp:Ljava/lang/Long;
    if-eqz v42, :cond_10

    .line 541
    move-object/from16 v0, v33

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setVcalStart(J)V

    .line 544
    :cond_10
    const/16 v3, 0xb

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 545
    .local v28, mVale:J
    new-instance v42, Ljava/lang/Long;

    .end local v42           #temp:Ljava/lang/Long;
    move-object/from16 v0, v42

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 546
    .restart local v42       #temp:Ljava/lang/Long;
    if-eqz v42, :cond_11

    .line 547
    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setVcalEnd(J)V

    .line 551
    :cond_11
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 552
    .local v35, partId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/part/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v35

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v39

    .line 553
    .local v39, partURI:Landroid/net/Uri;
    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 557
    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v44

    .line 558
    .local v44, type:Ljava/lang/String;
    invoke-static/range {v44 .. v44}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static/range {v44 .. v44}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static/range {v44 .. v44}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 561
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    .local v11, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x0

    .line 567
    .local v24, is:Ljava/io/InputStream;
    const-string v3, "text/plain"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "application/smil"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "text/html"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 569
    :cond_12
    const/16 v3, 0x8

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 571
    .local v43, text:Ljava/lang/String;
    if-eqz v43, :cond_13

    .line 573
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd2

    if-ne v3, v4, :cond_18

    const-string v3, "text/plain"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-eqz v3, :cond_18

    .line 578
    :try_start_6
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v12

    .line 580
    .local v12, blob:[B
    const/4 v3, 0x0

    array-length v4, v12

    invoke-virtual {v11, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    .line 619
    .end local v12           #blob:[B
    .end local v43           #text:Ljava/lang/String;
    :cond_13
    :goto_5
    :try_start_7
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 622
    :try_start_8
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 629
    .end local v11           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v24           #is:Ljava/io/InputStream;
    :cond_14
    :goto_6
    add-int/lit8 v37, v38, 0x1

    .end local v38           #partIdx:I
    .restart local v37       #partIdx:I
    :try_start_9
    aput-object v33, v40, v38

    move/from16 v38, v37

    .line 630
    .end local v37           #partIdx:I
    .restart local v38       #partIdx:I
    goto/16 :goto_1

    .line 457
    .end local v20           #ct:Ljava/lang/String;
    .end local v22           #fileName:[B
    .end local v27           #mExtraUri:Ljava/lang/String;
    .end local v28           #mVale:J
    .end local v30           #mVals:J
    .end local v35           #partId:J
    .end local v39           #partURI:Landroid/net/Uri;
    .end local v42           #temp:Ljava/lang/Long;
    .end local v44           #type:Ljava/lang/String;
    :cond_15
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Content-Type must be set."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 632
    .end local v15           #charset:Ljava/lang/Integer;
    .end local v16           #contentDisposition:[B
    .end local v17           #contentId:[B
    .end local v18           #contentLocation:[B
    .end local v19           #contentType:[B
    .end local v33           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v34           #partCount:I
    .end local v38           #partIdx:I
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_16

    .line 633
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 632
    :cond_16
    throw v3

    .line 475
    .restart local v15       #charset:Ljava/lang/Integer;
    .restart local v16       #contentDisposition:[B
    .restart local v17       #contentId:[B
    .restart local v18       #contentLocation:[B
    .restart local v19       #contentType:[B
    .restart local v33       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v34       #partCount:I
    .restart local v38       #partIdx:I
    :catch_0
    move-exception v21

    .line 476
    .local v21, e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 497
    .end local v21           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v21

    .line 498
    .restart local v21       #e:Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 524
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v20       #ct:Ljava/lang/String;
    .restart local v22       #fileName:[B
    :cond_17
    const/4 v3, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v32

    .line 526
    .restart local v32       #name:[B
    if-eqz v32, :cond_e

    .line 527
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    goto/16 :goto_4

    .line 581
    .end local v32           #name:[B
    .restart local v11       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v24       #is:Ljava/io/InputStream;
    .restart local v27       #mExtraUri:Ljava/lang/String;
    .restart local v28       #mVale:J
    .restart local v30       #mVals:J
    .restart local v35       #partId:J
    .restart local v39       #partURI:Landroid/net/Uri;
    .restart local v42       #temp:Ljava/lang/Long;
    .restart local v43       #text:Ljava/lang/String;
    .restart local v44       #type:Ljava/lang/String;
    :catch_2
    move-exception v21

    .line 583
    .local v21, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v43

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v12

    .line 584
    .restart local v12       #blob:[B
    const/4 v3, 0x0

    array-length v4, v12

    invoke-virtual {v11, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 588
    .end local v12           #blob:[B
    .end local v21           #e:Ljava/io/UnsupportedEncodingException;
    :cond_18
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v43

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v12

    .line 589
    .restart local v12       #blob:[B
    const/4 v3, 0x0

    array-length v4, v12

    invoke-virtual {v11, v12, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 597
    .end local v12           #blob:[B
    .end local v43           #text:Ljava/lang/String;
    :cond_19
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v24

    .line 599
    const/16 v3, 0x100

    new-array v13, v3, [B

    .line 600
    .local v13, buffer:[B
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->read([B)I

    move-result v25

    .line 601
    .local v25, len:I
    :goto_7
    if-ltz v25, :cond_1d

    .line 602
    const/4 v3, 0x0

    move/from16 v0, v25

    invoke-virtual {v11, v13, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 603
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/io/InputStream;->read([B)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-result v25

    goto :goto_7

    .line 605
    .end local v13           #buffer:[B
    .end local v25           #len:I
    :catch_3
    move-exception v21

    .line 606
    .local v21, e:Ljava/io/IOException;
    :try_start_c
    const-string v3, "PduPersister"

    const-string v4, "Failed to load part data"

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 608
    new-instance v3, Lcom/google/android/mms/MmsException;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 610
    .end local v21           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-eqz v24, :cond_1a

    .line 612
    :try_start_d
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 610
    :cond_1a
    :goto_8
    :try_start_e
    throw v3

    .line 623
    :catch_4
    move-exception v21

    .line 625
    .restart local v21       #e:Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 632
    .end local v11           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v15           #charset:Ljava/lang/Integer;
    .end local v16           #contentDisposition:[B
    .end local v17           #contentId:[B
    .end local v18           #contentLocation:[B
    .end local v19           #contentType:[B
    .end local v20           #ct:Ljava/lang/String;
    .end local v21           #e:Ljava/io/IOException;
    .end local v22           #fileName:[B
    .end local v24           #is:Ljava/io/InputStream;
    .end local v27           #mExtraUri:Ljava/lang/String;
    .end local v28           #mVale:J
    .end local v30           #mVals:J
    .end local v33           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v35           #partId:J
    .end local v39           #partURI:Landroid/net/Uri;
    .end local v42           #temp:Ljava/lang/Long;
    .end local v44           #type:Ljava/lang/String;
    :cond_1b
    if-eqz v14, :cond_1c

    .line 633
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1c
    move-object/from16 v3, v40

    .line 637
    goto/16 :goto_0

    .line 613
    .restart local v11       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #charset:Ljava/lang/Integer;
    .restart local v16       #contentDisposition:[B
    .restart local v17       #contentId:[B
    .restart local v18       #contentLocation:[B
    .restart local v19       #contentType:[B
    .restart local v20       #ct:Ljava/lang/String;
    .restart local v22       #fileName:[B
    .restart local v24       #is:Ljava/io/InputStream;
    .restart local v27       #mExtraUri:Ljava/lang/String;
    .restart local v28       #mVale:J
    .restart local v30       #mVals:J
    .restart local v33       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v35       #partId:J
    .restart local v39       #partURI:Landroid/net/Uri;
    .restart local v42       #temp:Ljava/lang/Long;
    .restart local v44       #type:Ljava/lang/String;
    :catch_5
    move-exception v21

    .line 614
    .restart local v21       #e:Ljava/io/IOException;
    :try_start_f
    const-string v4, "PduPersister"

    const-string v5, "Failed to close stream"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 610
    .end local v21           #e:Ljava/io/IOException;
    .restart local v13       #buffer:[B
    .restart local v25       #len:I
    :cond_1d
    if-eqz v24, :cond_13

    .line 612
    :try_start_10
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_5

    .line 613
    :catch_6
    move-exception v21

    .line 614
    .restart local v21       #e:Ljava/io/IOException;
    :try_start_11
    const-string v3, "PduPersister"

    const-string v4, "Failed to close stream"

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_5
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 8
    .parameter "msgId"
    .parameter "type"
    .parameter "array"

    .prologue
    .line 920
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 922
    .local v5, values:Landroid/content/ContentValues;
    move-object v1, p4

    .local v1, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 923
    .local v0, addr:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 924
    const-string v6, "address"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v6, "charset"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 926
    const-string v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 929
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    .end local v0           #addr:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 12
    .parameter "part"
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v7, 0x0

    .line 1029
    .local v7, os:Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 1032
    .local v5, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1037
    .local v3, dataUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    .line 1038
    .local v2, data:[B
    const-string v8, "text/plain"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "application/smil"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "text/html"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1041
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1043
    .local v1, cv:Landroid/content/ContentValues;
    if-nez v2, :cond_3

    .line 1044
    const-string v8, "text"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :goto_0
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v1, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    .line 1049
    new-instance v8, Lcom/google/android/mms/MmsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1136
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #data:[B
    :catch_0
    move-exception v4

    .line 1137
    .local v4, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v8, "PduPersister"

    const-string v9, "Failed to open Input/Output stream."

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1138
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-direct {v8, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1143
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_1

    .line 1145
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1150
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 1152
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1143
    :cond_2
    :goto_2
    throw v8

    .line 1046
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v2       #data:[B
    :cond_3
    :try_start_4
    const-string v8, "text"

    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v9, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1139
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #data:[B
    :catch_1
    move-exception v4

    .line 1140
    .local v4, e:Ljava/io/IOException;
    :try_start_5
    const-string v8, "PduPersister"

    const-string v9, "Failed to read/write data."

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    new-instance v8, Lcom/google/android/mms/MmsException;

    invoke-direct {v8, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1082
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #data:[B
    :cond_4
    :try_start_6
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 1083
    if-nez v2, :cond_a

    .line 1084
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 1085
    if-eqz v3, :cond_5

    if-ne v3, p2, :cond_8

    .line 1086
    :cond_5
    const-string v8, "PduPersister"

    const-string v9, "Can\'t find data for this part."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1143
    if-eqz v7, :cond_6

    .line 1145
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1150
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 1152
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1170
    :cond_7
    :goto_4
    return-void

    .line 1092
    :cond_8
    :try_start_9
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_DRM_V2_FLAG:Z

    if-eqz v8, :cond_9

    .line 1093
    const/4 v5, 0x0

    .line 1101
    :goto_5
    const-string v8, "PduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saving data to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 1105
    .local v0, buffer:[B
    const/4 v6, 0x0

    .local v6, len:I
    :goto_6
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    .line 1108
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 1095
    .end local v0           #buffer:[B
    .end local v6           #len:I
    :cond_9
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_5

    .line 1120
    :cond_a
    const-string v8, "PduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saving data to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1143
    :cond_b
    if-eqz v7, :cond_c

    .line 1145
    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1150
    :cond_c
    :goto_7
    if-eqz v5, :cond_7

    .line 1152
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 1153
    :catch_2
    move-exception v4

    .line 1154
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1146
    .end local v2           #data:[B
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1147
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1153
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 1154
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1146
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #data:[B
    :catch_5
    move-exception v4

    .line 1147
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1146
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 1147
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1153
    .end local v4           #e:Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 1154
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException while closing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_8
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 6
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 356
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 358
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 359
    .local v1, charsetColumnIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 360
    .local v0, charset:I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 362
    .local v3, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 364
    .end local v0           #charset:I
    .end local v1           #charsetColumnIndex:I
    .end local v3           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 3
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 387
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 389
    .local v0, l:J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 391
    .end local v0           #l:J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 380
    .local v0, b:I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 382
    .end local v0           #b:I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 369
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 371
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 373
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"

    .prologue
    .line 2069
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    :goto_0
    return-object v1

    .line 2070
    :catch_0
    move-exception v0

    .line 2072
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2073
    const-string v1, ""

    goto :goto_0
.end method

.method private updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 5
    .parameter "msgId"
    .parameter "type"
    .parameter "array"

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1227
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;J)V
    .locals 12
    .parameter "uri"
    .parameter "part"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1585
    new-instance v3, Landroid/content/ContentValues;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1587
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "mid"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1589
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 1590
    .local v6, charset:I
    if-eqz v6, :cond_0

    .line 1591
    const-string v0, "chset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1594
    :cond_0
    const/4 v7, 0x0

    .line 1595
    .local v7, contentType:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1596
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 1597
    const-string v0, "ct"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1603
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 1604
    .local v8, fileName:Ljava/lang/String;
    const-string v0, "fn"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .end local v8           #fileName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1608
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 1609
    .local v9, name:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    .end local v9           #name:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    .line 1613
    .local v11, value:Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1614
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v11

    .line 1615
    .local v11, value:Ljava/lang/String;
    const-string v0, "cd"

    check-cast v11, Ljava/lang/String;

    .end local v11           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1619
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v11

    .line 1620
    .restart local v11       #value:Ljava/lang/String;
    const-string v0, "cid"

    check-cast v11, Ljava/lang/String;

    .end local v11           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1624
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v11

    .line 1625
    .restart local v11       #value:Ljava/lang/String;
    const-string v0, "cl"

    check-cast v11, Ljava/lang/String;

    .end local v11           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_5
    goto/16 :cond_8
    
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1629
    const-string v0, "ExtraUri"

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :cond_6
    new-instance v10, Ljava/lang/Long;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 1632
    .local v10, temp:Ljava/lang/Long;
    if-eqz v10, :cond_7

    .line 1633
    const-string v0, "vCALs"

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1635
    :cond_7
    new-instance v10, Ljava/lang/Long;

    .end local v10           #temp:Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 1636
    .restart local v10       #temp:Ljava/lang/Long;
    if-eqz v10, :cond_8

    .line 1637
    const-string v0, "vCALe"

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1639
    :cond_8
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1644
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_a

    .line 1646
    :cond_9
    invoke-direct {p0, p2, p1, v7}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1648
    :cond_a
    return-void

    .line 1599
    .end local v10           #temp:Ljava/lang/Long;
    :cond_b
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCachePdu(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 5
    .parameter "uri"

    .prologue
    .line 683
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 684
    .local v0, msgId:J
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/GenericPdu;

    .line 685
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v2, :cond_0

    .line 700
    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_0
    return-object v2

    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFromAddress(Landroid/net/Uri;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .parameter "uri"

    .prologue
    .line 722
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 723
    .local v1, msgId:J
    new-instance v0, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 724
    .local v0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 725
    const/16 v3, 0x89

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    return-object v3
.end method

.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 8
    .parameter "dueTime"

    .prologue
    .line 2102
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2103
    .local v7, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2105
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 2108
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 2113
    .local v5, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 29
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 736
    const/16 v23, 0x0

    .line 739
    .local v23, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 741
    .local v18, msgId:J
    const/16 v17, 0x0

    .line 742
    .local v17, msgBox:I
    const-wide/16 v27, -0x1

    .line 743
    .local v27, threadId:J
    const/16 v25, 0x0

    .line 745
    .local v25, phoneType:I
    :try_start_0
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 747
    :try_start_1
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    const-string v3, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " blocked by isUpdating()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 752
    :try_start_2
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 762
    :cond_0
    :goto_0
    :try_start_3
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v23, v0

    .line 763
    if-eqz v23, :cond_3

    .line 764
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 899
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4

    .line 900
    if-eqz v23, :cond_2

    .line 902
    :try_start_4
    sget-boolean v3, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 911
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 753
    :catch_0
    move-exception v12

    .line 754
    .local v12, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v3, "PduPersister"

    const-string v5, "load: "

    invoke-static {v3, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 770
    .end local v12           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 894
    :catch_1
    move-exception v12

    .line 895
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_7
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 896
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "SQLiteException"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 899
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v3

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4

    .line 900
    if-eqz v23, :cond_10

    .line 902
    :try_start_8
    sget-boolean v5, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 911
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    .line 906
    :cond_1
    :try_start_9
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/GenericPdu;->setPhoneType(I)V

    .line 907
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    #invoke-virtual {v3, v5, v0}, Lcom/google/android/mms/util/PduCache;->put(Ljava/lang/Long;Lcom/google/android/mms/pdu/GenericPdu;)Lcom/google/android/mms/pdu/GenericPdu;

    .line 909
    :cond_2
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 910
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 911
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v24, v23

    .line 915
    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .local v24, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_1
    return-object v24

    .line 769
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    :try_start_a
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 770
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 772
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 774
    .local v11, c:Landroid/database/Cursor;
    new-instance v14, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1

    .line 778
    .local v14, headers:Lcom/google/android/mms/pdu/PduHeaders;
    if-eqz v11, :cond_4

    :try_start_c
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_6

    .line 779
    :cond_4
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 810
    :catchall_4
    move-exception v3

    if-eqz v11, :cond_5

    .line 811
    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 810
    :cond_5
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_1

    .line 782
    :cond_6
    const/4 v3, 0x1

    :try_start_e
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 783
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 784
    #const/16 v3, 0x1b

    #invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    #move-result v25

    .line 786
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 787
    .local v26, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 788
    .local v13, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_2

    .line 792
    .end local v13           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 793
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 794
    .restart local v13       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_3

    .line 798
    .end local v13           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 799
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 800
    .restart local v13       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_4

    .line 804
    .end local v13           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 805
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 806
    .restart local v13       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_5

    .line 810
    .end local v13           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_a
    if-eqz v11, :cond_b

    .line 811
    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_b
    const-wide/16 v3, -0x1

    cmp-long v3, v18, v3

    if-nez v3, :cond_c

    .line 817
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Error! ID of the message: -1."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 821
    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v14}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 823
    const/16 v3, 0x8c

    invoke-virtual {v14, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v20

    .line 824
    .local v20, msgType:I
    new-instance v10, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 828
    .local v10, body:Lcom/google/android/mms/pdu/PduBody;
    const/16 v3, 0x84

    move/from16 v0, v20

    if-eq v0, v3, :cond_d

    const/16 v3, 0x80

    move/from16 v0, v20

    if-ne v0, v3, :cond_e

    .line 830
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v21

    .line 831
    .local v21, parts:[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v21, :cond_e

    .line 832
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    .line 833
    .local v22, partsNum:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_6
    move/from16 v0, v22

    if-ge v15, v0, :cond_e

    .line 834
    aget-object v3, v21, v15

    invoke-virtual {v10, v3}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 833
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 844
    .end local v15           #i:I
    .end local v21           #parts:[Lcom/google/android/mms/pdu/PduPart;
    .end local v22           #partsNum:I
    :cond_e
    packed-switch v20, :pswitch_data_0

    .line 889
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized PDU type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 846
    :pswitch_0
    new-instance v24, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_1

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 899
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_7
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4

    .line 900
    if-eqz v23, :cond_12

    .line 902
    :try_start_10
    sget-boolean v3, Lcom/google/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v3, :cond_11

    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 911
    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v3

    .line 849
    :pswitch_1
    :try_start_11
    new-instance v24, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 850
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_7

    .line 852
    :pswitch_2
    new-instance v24, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 853
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_7

    .line 855
    :pswitch_3
    new-instance v24, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, v24

    invoke-direct {v0, v14, v10}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 856
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_7

    .line 858
    :pswitch_4
    new-instance v24, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, v24

    invoke-direct {v0, v14, v10}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 859
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_7

    .line 861
    :pswitch_5
    new-instance v24, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 862
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_7

    .line 864
    :pswitch_6
    new-instance v24, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 865
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_7

    .line 867
    :pswitch_7
    new-instance v24, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v23, v24

    .line 868
    .end local v24           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v23       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_7

    .line 885
    :pswitch_8
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported PDU type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_1

    .line 906
    .end local v10           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v14           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #msgType:I
    .end local v26           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_f
    :try_start_12
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/GenericPdu;->setPhoneType(I)V

    .line 907
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v23

    #invoke-virtual {v5, v6, v0}, Lcom/google/android/mms/util/PduCache;->put(Ljava/lang/Long;Lcom/google/android/mms/pdu/GenericPdu;)Lcom/google/android/mms/pdu/GenericPdu;

    .line 909
    :cond_10
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 910
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 911
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 899
    throw v3

    .line 906
    .restart local v10       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v14       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v20       #msgType:I
    .restart local v26       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_11
    :try_start_13
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/GenericPdu;->setPhoneType(I)V

    .line 907
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    #invoke-virtual {v3, v5, v0}, Lcom/google/android/mms/util/PduCache;->put(Ljava/lang/Long;Lcom/google/android/mms/pdu/GenericPdu;)Lcom/google/android/mms/pdu/GenericPdu;

    .line 909
    :cond_12
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 910
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 911
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-object/from16 v24, v23

    .line 915
    .end local v23           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto/16 :goto_1

    .line 844
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public loadAddresses(Landroid/net/Uri;I)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .parameter "uri"
    .parameter "field"

    .prologue
    .line 714
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 715
    .local v1, msgId:J
    new-instance v0, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 716
    .local v0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 717
    invoke-virtual {v0, p2}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    return-object v3
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2043
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 2044
    .local v7, msgId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 2045
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2049
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2050
    .local v6, msgBox:Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 2051
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2058
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2059
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "msg_box"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2060
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2061
    invoke-static {p2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "pdu"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 56
    .parameter "pdu"
    .parameter "uri"
    .parameter "forceThreadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1757
    if-nez p2, :cond_0

    .line 1758
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Uri may not be null."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1760
    :cond_0
    const-wide/16 v44, -0x1

    .line 1762
    .local v44, msgId:J
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v44

    .line 1766
    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v5, v44, v5

    if-eqz v5, :cond_1

    const/16 v33, 0x1

    .line 1768
    .local v33, existingUri:Z
    :goto_1
    if-nez v33, :cond_2

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1769
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1766
    .end local v33           #existingUri:Z
    :cond_1
    const/16 v33, 0x0

    goto :goto_1

    .line 1775
    .restart local v33       #existingUri:Z
    :cond_2
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v6

    .line 1778
    :try_start_1
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1780
    const-string v5, "PduPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "persist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " blocked by isUpdating()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    :try_start_2
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1788
    :cond_3
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1793
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/mms/util/PduCache;->invalidate(Ljava/lang/Long;)Lcom/google/android/mms/pdu/GenericPdu;

    .line 1796
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v35

    .line 1797
    .local v35, header:Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v26, 0x0

    .line 1798
    .local v26, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1801
    .local v12, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v50

    .line 1802
    .local v50, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map$Entry;

    .line 1803
    .local v31, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 1804
    .local v34, field:I
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 1805
    .local v32, encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_4

    .line 1806
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 1807
    .local v27, charsetColumn:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1784
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v26           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v27           #charsetColumn:Ljava/lang/String;
    .end local v31           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v32           #encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v34           #field:I
    .end local v35           #header:Lcom/google/android/mms/pdu/PduHeaders;
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v50           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v30

    .line 1785
    .local v30, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "PduPersister"

    const-string v9, "persist1: "

    move-object/from16 v0, v30

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1788
    .end local v30           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 1812
    .restart local v12       #values:Landroid/content/ContentValues;
    .restart local v26       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v35       #header:Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v37       #i$:Ljava/util/Iterator;
    .restart local v50       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_5
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v50

    .line 1813
    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_6
    :goto_4
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map$Entry;

    .line 1814
    .restart local v31       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v52

    .line 1815
    .local v52, text:[B
    if-eqz v52, :cond_6

    .line 1816
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v52 .. v52}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1820
    .end local v31           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v52           #text:[B
    :cond_7
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v50

    .line 1821
    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_8
    :goto_5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map$Entry;

    .line 1822
    .restart local v31       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v25

    .line 1823
    .local v25, b:I
    if-eqz v25, :cond_8

    .line 1824
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1828
    .end local v25           #b:I
    .end local v31           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v50

    .line 1829
    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_a
    :goto_6
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/Map$Entry;

    .line 1830
    .restart local v31       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v39

    .line 1831
    .local v39, l:J
    const-wide/16 v5, -0x1

    cmp-long v5, v39, v5

    if-eqz v5, :cond_a

    .line 1832
    invoke-interface/range {v31 .. v31}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 1836
    .end local v31           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v39           #l:J
    :cond_b
    new-instance v21, Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1839
    .local v21, addressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .local v22, arr$:[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v41, v0

    .local v41, len$:I
    const/16 v37, 0x0

    .local v37, i$:I
    :goto_7
    move/from16 v0, v37

    move/from16 v1, v41

    if-ge v0, v1, :cond_e

    aget v19, v22, v37

    .line 1840
    .local v19, addrType:I
    const/16 v24, 0x0

    .line 1841
    .local v24, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v5, 0x89

    move/from16 v0, v19

    if-ne v0, v5, :cond_d

    .line 1842
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v55

    .line 1843
    .local v55, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v55, :cond_c

    .line 1844
    const/4 v5, 0x1

    new-array v0, v5, [Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v24, v0

    .line 1845
    const/4 v5, 0x0

    aput-object v55, v24, v5

    .line 1850
    .end local v55           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    :goto_8
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    add-int/lit8 v37, v37, 0x1

    goto :goto_7

    .line 1848
    :cond_d
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    goto :goto_8

    .line 1853
    .end local v19           #addrType:I
    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_e
    new-instance v49, Ljava/util/HashSet;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashSet;-><init>()V

    .line 1854
    .local v49, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v53, 0x7fffffffffffffffL

    .line 1855
    .local v53, threadId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v46

    .line 1860
    .local v46, msgType:I
    const/16 v5, 0x82

    move/from16 v0, v46

    if-eq v0, v5, :cond_f

    const/16 v5, 0x84

    move/from16 v0, v46

    if-eq v0, v5, :cond_f

    const/16 v5, 0x80

    move/from16 v0, v46

    if-ne v0, v5, :cond_14

    .line 1863
    :cond_f
    const/16 v24, 0x0

    .line 1866
    .restart local v24       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    if-eqz v5, :cond_1c

    .line 1867
    packed-switch v46, :pswitch_data_0

    .line 1923
    .end local v22           #arr$:[I
    .end local v37           #i$:I
    .end local v41           #len$:I
    :cond_10
    :pswitch_0
    const/16 v5, 0x80

    move/from16 v0, v46

    if-eq v0, v5, :cond_14

    .line 1926
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1927
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPhoneType()I

    move-result v5

    if-lez v5, :cond_1e

    .line 1928
    const-string v5, "phone_type"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPhoneType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPhoneType()I

    move-result v6

    move-object/from16 v0, v49

    invoke-static {v5, v0, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v53

    .line 1937
    :cond_11
    :goto_9
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1938
    .local v8, updateValues:Landroid/content/ContentValues;
    const-string v5, "content://search"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1940
    .local v7, searchUri:Landroid/net/Uri;
    const/16 v5, 0x89

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v51

    .line 1941
    .local v51, strValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v20, 0x0

    .line 1942
    .local v20, address:Ljava/lang/String;
    if-eqz v51, :cond_12

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    .line 1943
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/provider/Telephony$Mms;->getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1944
    const-string v5, "name"

    move-object/from16 v0, v20

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const/16 v5, 0x96

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v51

    .line 1947
    if-eqz v51, :cond_13

    const-string v5, "body"

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v53

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    #invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1955
    .end local v7           #searchUri:Landroid/net/Uri;
    .end local v8           #updateValues:Landroid/content/ContentValues;
    .end local v20           #address:Ljava/lang/String;
    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v51           #strValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v53, v5

    if-eqz v5, :cond_15

    .line 1956
    const-string v5, "thread_id"

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1959
    :cond_15
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v53, v5

    if-nez v5, :cond_16

    if-eqz p3, :cond_16

    .line 1960
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    .line 1963
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPhoneType()I

    move-result v5

    if-lez v5, :cond_1f

    .line 1964
    const-string v5, "phone_type"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPhoneType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPhoneType()I

    move-result v6

    move-object/from16 v0, v49

    invoke-static {v5, v0, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v53

    .line 1970
    :goto_a
    const-string v5, "thread_id"

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1977
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 1979
    .local v28, dummyId:J
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v5, :cond_20

    .line 1980
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v26

    .line 1982
    if-eqz v26, :cond_20

    .line 1983
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v48

    .line 1984
    .local v48, partsNum:I
    const/16 v36, 0x0

    .local v36, i:I
    :goto_b
    move/from16 v0, v36

    move/from16 v1, v48

    if-ge v0, v1, :cond_20

    .line 1985
    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v47

    .line 1986
    .local v47, part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    .line 1984
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 1870
    .end local v28           #dummyId:J
    .end local v36           #i:I
    .end local v47           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v48           #partsNum:I
    .restart local v22       #arr$:[I
    .restart local v24       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v37       #i$:I
    .restart local v41       #len$:I
    .restart local p1
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v43

    .line 1871
    .local v43, localNumber:Ljava/lang/String;
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS_VZW_NGM:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v41, v0

    const/16 v37, 0x0

    move/from16 v38, v37

    .end local v22           #arr$:[I
    .end local v37           #i$:I
    .end local v41           #len$:I
    .local v38, i$:I
    :goto_c
    move/from16 v0, v38

    move/from16 v1, v41

    if-ge v0, v1, :cond_10

    aget v19, v22, v38

    .line 1872
    .restart local v19       #addrType:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v24, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1873
    .restart local v24       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_19

    .line 1874
    move-object/from16 v23, v24

    .local v23, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v42, v0

    .local v42, len$:I
    const/16 v37, 0x0

    .end local v38           #i$:I
    .restart local v37       #i$:I
    :goto_d
    move/from16 v0, v37

    move/from16 v1, v42

    if-ge v0, v1, :cond_19

    aget-object v55, v23, v37

    .line 1875
    .restart local v55       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v55, :cond_17

    .line 1877
    const/16 v5, 0x89

    move/from16 v0, v19

    if-eq v0, v5, :cond_18

    invoke-virtual/range {v55 .. v55}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1874
    :cond_17
    :goto_e
    add-int/lit8 v37, v37, 0x1

    goto :goto_d

    .line 1881
    :cond_18
    invoke-virtual/range {v55 .. v55}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1871
    .end local v23           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v37           #i$:I
    .end local v42           #len$:I
    .end local v55           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_19
    add-int/lit8 v37, v38, 0x1

    .restart local v37       #i$:I
    move/from16 v38, v37

    .end local v37           #i$:I
    .restart local v38       #i$:I
    goto :goto_c

    .line 1888
    .end local v19           #addrType:I
    .end local v38           #i$:I
    .end local v43           #localNumber:Ljava/lang/String;
    .restart local v22       #arr$:[I
    .restart local v37       #i$:I
    .restart local v41       #len$:I
    :pswitch_2
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS_VZW_NGM:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v41, v0

    const/16 v37, 0x0

    move/from16 v38, v37

    .end local v22           #arr$:[I
    .end local v37           #i$:I
    .end local v41           #len$:I
    .restart local v38       #i$:I
    :goto_f
    move/from16 v0, v38

    move/from16 v1, v41

    if-ge v0, v1, :cond_10

    aget v19, v22, v38

    .line 1889
    .restart local v19       #addrType:I
    const/16 v5, 0x89

    move/from16 v0, v19

    if-eq v0, v5, :cond_1b

    .line 1890
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v24, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1891
    .restart local v24       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_1b

    .line 1892
    move-object/from16 v23, v24

    .restart local v23       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v42, v0

    .restart local v42       #len$:I
    const/16 v37, 0x0

    .end local v38           #i$:I
    .restart local v37       #i$:I
    :goto_10
    move/from16 v0, v37

    move/from16 v1, v42

    if-ge v0, v1, :cond_1b

    aget-object v55, v23, v37

    .line 1893
    .restart local v55       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v55, :cond_1a

    .line 1894
    invoke-virtual/range {v55 .. v55}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1892
    :cond_1a
    add-int/lit8 v37, v37, 0x1

    goto :goto_10

    .line 1888
    .end local v23           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v37           #i$:I
    .end local v42           #len$:I
    .end local v55           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1b
    add-int/lit8 v37, v38, 0x1

    .restart local v37       #i$:I
    move/from16 v38, v37

    .end local v37           #i$:I
    .restart local v38       #i$:I
    goto :goto_f

    .line 1904
    .end local v19           #addrType:I
    .end local v38           #i$:I
    .restart local v22       #arr$:[I
    .restart local v37       #i$:I
    .restart local v41       #len$:I
    :cond_1c
    packed-switch v46, :pswitch_data_1

    .line 1914
    :goto_11
    :pswitch_3
    if-eqz v24, :cond_10

    .line 1915
    move-object/from16 v22, v24

    .local v22, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v41, v0

    const/16 v37, 0x0

    :goto_12
    move/from16 v0, v37

    move/from16 v1, v41

    if-ge v0, v1, :cond_10

    aget-object v55, v22, v37

    .line 1916
    .restart local v55       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v55, :cond_1d

    .line 1917
    invoke-virtual/range {v55 .. v55}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1915
    :cond_1d
    add-int/lit8 v37, v37, 0x1

    goto :goto_12

    .line 1907
    .end local v55           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v22, arr$:[I
    :pswitch_4
    const/16 v5, 0x89

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v24, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1908
    .restart local v24       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_11

    .line 1910
    :pswitch_5
    const/16 v5, 0x97

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v24, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .restart local v24       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_11

    .line 1931
    .end local v22           #arr$:[I
    .end local v37           #i$:I
    .end local v41           #len$:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v53

    goto/16 :goto_9

    .line 1967
    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v53

    goto/16 :goto_a

    .line 1991
    .end local p1
    .restart local v28       #dummyId:J
    :cond_20
    const/4 v11, 0x0

    .line 1992
    .local v11, res:Landroid/net/Uri;
    if-eqz v33, :cond_23

    .line 1993
    move-object/from16 v11, p2

    .line 1994
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2005
    :goto_13
    new-instance v12, Landroid/content/ContentValues;

    .end local v12           #values:Landroid/content/ContentValues;
    const/4 v5, 0x1

    invoke-direct {v12, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 2006
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v5, "mid"

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/part"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v12

    invoke-static/range {v13 .. v18}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2015
    if-nez v33, :cond_21

    .line 2016
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2020
    :cond_21
    sget-object v22, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .restart local v22       #arr$:[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v41, v0

    .restart local v41       #len$:I
    const/16 v37, 0x0

    .restart local v37       #i$:I
    :goto_14
    move/from16 v0, v37

    move/from16 v1, v41

    if-ge v0, v1, :cond_25

    aget v19, v22, v37

    .line 2021
    .restart local v19       #addrType:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 2022
    .restart local v24       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_22

    .line 2023
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move/from16 v3, v19

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2020
    :cond_22
    add-int/lit8 v37, v37, 0x1

    goto :goto_14

    .line 1996
    .end local v19           #addrType:I
    .end local v22           #arr$:[I
    .end local v24           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v37           #i$:I
    .end local v41           #len$:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-static {v5, v6, v0, v12}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1997
    if-nez v11, :cond_24

    .line 1998
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "persist() failed: return null."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2002
    :cond_24
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    goto/16 :goto_13

    .line 1763
    .end local v11           #res:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v21           #addressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    .end local v26           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v28           #dummyId:J
    .end local v33           #existingUri:Z
    .end local v35           #header:Lcom/google/android/mms/pdu/PduHeaders;
    .end local v46           #msgType:I
    .end local v49           #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v50           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v53           #threadId:J
    .restart local p1
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 2027
    .end local p1
    .restart local v11       #res:Landroid/net/Uri;
    .restart local v12       #values:Landroid/content/ContentValues;
    .restart local v21       #addressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    .restart local v22       #arr$:[I
    .restart local v26       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v28       #dummyId:J
    .restart local v33       #existingUri:Z
    .restart local v35       #header:Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v37       #i$:I
    .restart local v41       #len$:I
    .restart local v46       #msgType:I
    .restart local v49       #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v50       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v53       #threadId:J
    :cond_25
    return-object v11

    .line 1867
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1904
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;
    .locals 12
    .parameter "part"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 935
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/part"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 936
    .local v6, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 938
    .local v8, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    .line 939
    .local v0, charset:I
    if-eqz v0, :cond_0

    .line 940
    const-string v9, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    :cond_0
    const/4 v1, 0x0

    .line 944
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    if-eqz v9, :cond_b

    .line 945
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 949
    const-string v9, "image/jpg"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 950
    const-string v1, "image/jpeg"

    .line 953
    :cond_1
    const-string v9, "ct"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v9, "application/smil"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 956
    const-string v9, "seq"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 962
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v9

    if-eqz v9, :cond_3

    .line 963
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V

    .line 964
    .local v2, fileName:Ljava/lang/String;
    const-string v9, "fn"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .end local v2           #fileName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v9

    if-eqz v9, :cond_4

    .line 968
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    .line 969
    .local v3, name:Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 973
    .local v7, value:Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v9

    if-eqz v9, :cond_5

    .line 974
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 975
    .local v7, value:Ljava/lang/String;
    const-string v9, "cd"

    check-cast v7, Ljava/lang/String;

    .end local v7           #value:Ljava/lang/String;
    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v9

    if-eqz v9, :cond_6

    .line 979
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 980
    .restart local v7       #value:Ljava/lang/String;
    const-string v9, "cid"

    check-cast v7, Ljava/lang/String;

    .end local v7           #value:Ljava/lang/String;
    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    if-eqz v9, :cond_7

    .line 984
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 985
    .restart local v7       #value:Ljava/lang/String;
    const-string v9, "cl"

    check-cast v7, Ljava/lang/String;

    .end local v7           #value:Ljava/lang/String;
    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_7
    goto/16 :cond_a

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 989
    const-string v9, "ExtraUri"

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_8
    new-instance v5, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Ljava/lang/Long;-><init>(J)V

    .line 992
    .local v5, temp:Ljava/lang/Long;
    if-eqz v5, :cond_9

    .line 993
    const-string v9, "vCALs"

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 995
    :cond_9
    new-instance v5, Ljava/lang/Long;

    .end local v5           #temp:Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v9

    invoke-direct {v5, v9, v10}, Ljava/lang/Long;-><init>(J)V

    .line 996
    .restart local v5       #temp:Ljava/lang/Long;
    if-eqz v5, :cond_a

    .line 997
    const-string v9, "vCALe"

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 999
    :cond_a
    iget-object v9, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9, v10, v6, v8}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 1000
    .local v4, res:Landroid/net/Uri;
    if-nez v4, :cond_c

    .line 1001
    new-instance v9, Lcom/google/android/mms/MmsException;

    const-string v10, "Failed to persist part, return null."

    invoke-direct {v9, v10}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 959
    .end local v4           #res:Landroid/net/Uri;
    .end local v5           #temp:Ljava/lang/Long;
    :cond_b
    new-instance v9, Lcom/google/android/mms/MmsException;

    const-string v10, "MIME type of the part must be set."

    invoke-direct {v9, v10}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1004
    .restart local v4       #res:Landroid/net/Uri;
    .restart local v5       #temp:Ljava/lang/Long;
    :cond_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1009
    return-object v4
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2094
    const-string v1, "content://mms/9223372036854775807/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2095
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2096
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 39
    .parameter "uri"
    .parameter "sendReq"

    .prologue
    .line 1437
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4

    .line 1440
    :try_start_0
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1442
    const-string v3, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateHeaders: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " blocked by isUpdating()"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    :try_start_1
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1450
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1455
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v29

    .line 1456
    .local v29, msgId:J
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/util/PduCache;->invalidate(Ljava/lang/Long;)Lcom/google/android/mms/pdu/GenericPdu;

    .line 1460
    new-instance v6, Landroid/content/ContentValues;

    const/16 v3, 0xb

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1461
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v14

    .line 1462
    .local v14, contentType:[B
    if-eqz v14, :cond_1

    .line 1463
    const-string v3, "ct_t"

    invoke-static {v14}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v15

    .line 1467
    .local v15, date:J
    const-wide/16 v3, -0x1

    cmp-long v3, v15, v3

    if-eqz v3, :cond_2

    .line 1468
    const-string v3, "date"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1471
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v17

    .line 1472
    .local v17, deliveryReport:I
    if-eqz v17, :cond_3

    .line 1473
    const-string v3, "d_rpt"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1476
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v19

    .line 1477
    .local v19, expiry:J
    const-wide/16 v3, -0x1

    cmp-long v3, v19, v3

    if-eqz v3, :cond_4

    .line 1478
    const-string v3, "exp"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1481
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v28

    .line 1482
    .local v28, msgClass:[B
    if-eqz v28, :cond_5

    .line 1483
    const-string v3, "m_cls"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v31

    .line 1487
    .local v31, priority:I
    if-eqz v31, :cond_6

    .line 1488
    const-string v3, "pri"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1491
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v32

    .line 1492
    .local v32, readReport:I
    if-eqz v32, :cond_7

    .line 1493
    const-string v3, "rr"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1496
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v37

    .line 1497
    .local v37, transId:[B
    if-eqz v37, :cond_8

    .line 1498
    const-string v3, "tr_id"

    invoke-static/range {v37 .. v37}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v34

    .line 1502
    .local v34, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v34, :cond_c

    .line 1503
    const-string v3, "sub"

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v3, "sub_cs"

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v26

    .line 1510
    .local v26, messageSize:J
    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-lez v3, :cond_9

    .line 1511
    const-string v3, "m_size"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1514
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v21

    .line 1515
    .local v21, headers:Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 1519
    .local v33, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    if-eqz v3, :cond_d

    .line 1520
    sget-object v9, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS_VZW_NGM:[I

    .line 1523
    .local v9, addrFieldArray:[I
    :goto_2
    move-object v11, v9

    .local v11, arr$:[I
    array-length v0, v11

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    move/from16 v23, v22

    .end local v11           #arr$:[I
    .end local v22           #i$:I
    .end local v24           #len$:I
    .local v23, i$:I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    aget v10, v11, v23

    .line 1524
    .local v10, addrType:I
    const/4 v13, 0x0

    .line 1525
    .local v13, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v3, 0x89

    if-ne v10, v3, :cond_e

    .line 1526
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v38

    .line 1527
    .local v38, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v38, :cond_a

    .line 1528
    const/4 v3, 0x1

    new-array v13, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1529
    const/4 v3, 0x0

    aput-object v38, v13, v3

    .line 1535
    .end local v38           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_4
    if-eqz v13, :cond_11

    .line 1541
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2, v10, v13}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1544
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    if-eqz v3, :cond_f

    .line 1545
    const/16 v3, 0x89

    if-eq v10, v3, :cond_11

    .line 1546
    move-object v12, v13

    .local v12, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v12

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v22, 0x0

    .end local v23           #i$:I
    .restart local v22       #i$:I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    aget-object v38, v12, v22

    .line 1547
    .restart local v38       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v38, :cond_b

    .line 1548
    invoke-virtual/range {v38 .. v38}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1546
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 1446
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v9           #addrFieldArray:[I
    .end local v10           #addrType:I
    .end local v12           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14           #contentType:[B
    .end local v15           #date:J
    .end local v17           #deliveryReport:I
    .end local v19           #expiry:J
    .end local v21           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .end local v22           #i$:I
    .end local v25           #len$:I
    .end local v26           #messageSize:J
    .end local v28           #msgClass:[B
    .end local v29           #msgId:J
    .end local v31           #priority:I
    .end local v32           #readReport:I
    .end local v33           #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v34           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v37           #transId:[B
    .end local v38           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v18

    .line 1447
    .local v18, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "PduPersister"

    const-string v5, "updateHeaders: "

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1450
    .end local v18           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1506
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v14       #contentType:[B
    .restart local v15       #date:J
    .restart local v17       #deliveryReport:I
    .restart local v19       #expiry:J
    .restart local v28       #msgClass:[B
    .restart local v29       #msgId:J
    .restart local v31       #priority:I
    .restart local v32       #readReport:I
    .restart local v34       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v37       #transId:[B
    :cond_c
    const-string v3, "sub"

    const-string v4, ""

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1522
    .restart local v21       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v26       #messageSize:J
    .restart local v33       #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    sget-object v9, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .restart local v9       #addrFieldArray:[I
    goto :goto_2

    .line 1532
    .restart local v10       #addrType:I
    .restart local v13       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v23       #i$:I
    :cond_e
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    goto :goto_4

    .line 1554
    :cond_f
    const/16 v3, 0x97

    if-ne v10, v3, :cond_11

    .line 1555
    move-object v12, v13

    .restart local v12       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v12

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v22, 0x0

    .end local v23           #i$:I
    .restart local v22       #i$:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_11

    aget-object v38, v12, v22

    .line 1556
    .restart local v38       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v38, :cond_10

    .line 1557
    invoke-virtual/range {v38 .. v38}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1555
    :cond_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 1523
    .end local v12           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v22           #i$:I
    .end local v25           #len$:I
    .end local v38           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    add-int/lit8 v22, v23, 0x1

    .restart local v22       #i$:I
    move/from16 v23, v22

    .end local v22           #i$:I
    .restart local v23       #i$:I
    goto/16 :goto_3

    .line 1569
    .end local v10           #addrType:I
    .end local v13           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_12
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1570
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v3

    if-lez v3, :cond_14

    .line 1571
    const-string v3, "phone_type"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v4

    move-object/from16 v0, v33

    invoke-static {v3, v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v35

    .line 1573
    .local v35, threadId:J
    const-string v3, "thread_id"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1581
    .end local v35           #threadId:J
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1582
    return-void

    .line 1575
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v35

    .line 1576
    .restart local v35       #threadId:J
    const-string v3, "thread_id"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;Z)V
    .locals 48
    .parameter "uri"
    .parameter "sendReq"
    .parameter "isSend"

    .prologue
    .line 1238
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1241
    :try_start_0
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1243
    const-string v4, "PduPersister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateHeaders: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " blocked by isUpdating()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    :try_start_1
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1251
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1256
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v35

    .line 1257
    .local v35, msgId:J
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/mms/util/PduCache;->invalidate(Ljava/lang/Long;)Lcom/google/android/mms/pdu/GenericPdu;

    .line 1261
    new-instance v11, Landroid/content/ContentValues;

    const/16 v4, 0xb

    invoke-direct {v11, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1262
    .local v11, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v20

    .line 1263
    .local v20, contentType:[B
    if-eqz v20, :cond_1

    .line 1264
    const-string v4, "ct_t"

    invoke-static/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v21

    .line 1268
    .local v21, date:J
    const-wide/16 v4, -0x1

    cmp-long v4, v21, v4

    if-eqz v4, :cond_2

    .line 1269
    const-string v4, "date"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1272
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v23

    .line 1273
    .local v23, deliveryReport:I
    if-eqz v23, :cond_3

    .line 1274
    const-string v4, "d_rpt"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1277
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v25

    .line 1278
    .local v25, expiry:J
    const-wide/16 v4, -0x1

    cmp-long v4, v25, v4

    if-eqz v4, :cond_4

    .line 1279
    const-string v4, "exp"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1282
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v34

    .line 1283
    .local v34, msgClass:[B
    if-eqz v34, :cond_5

    .line 1284
    const-string v4, "m_cls"

    invoke-static/range {v34 .. v34}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v38

    .line 1288
    .local v38, priority:I
    if-eqz v38, :cond_6

    .line 1289
    const-string v4, "pri"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v39

    .line 1293
    .local v39, readReport:I
    if-eqz v39, :cond_7

    .line 1294
    const-string v4, "rr"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v46

    .line 1298
    .local v46, transId:[B
    if-eqz v46, :cond_8

    .line 1299
    const-string v4, "tr_id"

    invoke-static/range {v46 .. v46}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v42

    .line 1303
    .local v42, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v42, :cond_c

    .line 1304
    const-string v4, "sub"

    invoke-virtual/range {v42 .. v42}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v4, "sub_cs"

    invoke-virtual/range {v42 .. v42}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v32

    .line 1311
    .local v32, messageSize:J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_9

    .line 1312
    const-string v4, "m_size"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1315
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v27

    .line 1316
    .local v27, headers:Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v40, Ljava/util/HashSet;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashSet;-><init>()V

    .line 1321
    .local v40, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    if-eqz v4, :cond_d

    .line 1322
    sget-object v14, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS_VZW_NGM:[I

    .line 1325
    .local v14, addrFieldArray:[I
    :goto_2
    move-object/from16 v17, v14

    .local v17, arr$:[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    move/from16 v29, v28

    .end local v17           #arr$:[I
    .end local v28           #i$:I
    .end local v30           #len$:I
    .local v29, i$:I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_12

    aget v15, v17, v29

    .line 1327
    .local v15, addrType:I
    const/16 v19, 0x0

    .line 1328
    .local v19, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v4, 0x89

    if-ne v15, v4, :cond_e

    .line 1329
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v47

    .line 1330
    .local v47, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v47, :cond_a

    .line 1331
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v19, v0

    .line 1332
    const/4 v4, 0x0

    aput-object v47, v19, v4

    .line 1338
    .end local v47           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_4
    if-eqz v19, :cond_11

    .line 1344
    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1348
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    if-eqz v4, :cond_f

    .line 1349
    const/16 v4, 0x89

    if-eq v15, v4, :cond_11

    .line 1350
    move-object/from16 v18, v19

    .local v18, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v28, 0x0

    .end local v29           #i$:I
    .restart local v28       #i$:I
    :goto_5
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_11

    aget-object v47, v18, v28

    .line 1351
    .restart local v47       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v47, :cond_b

    .line 1352
    invoke-virtual/range {v47 .. v47}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 1247
    .end local v11           #values:Landroid/content/ContentValues;
    .end local v14           #addrFieldArray:[I
    .end local v15           #addrType:I
    .end local v18           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v19           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v20           #contentType:[B
    .end local v21           #date:J
    .end local v23           #deliveryReport:I
    .end local v25           #expiry:J
    .end local v27           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .end local v28           #i$:I
    .end local v31           #len$:I
    .end local v32           #messageSize:J
    .end local v34           #msgClass:[B
    .end local v35           #msgId:J
    .end local v38           #priority:I
    .end local v39           #readReport:I
    .end local v40           #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v42           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v46           #transId:[B
    .end local v47           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v24

    .line 1248
    .local v24, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "PduPersister"

    const-string v8, "updateHeaders: "

    move-object/from16 v0, v24

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1251
    .end local v24           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1307
    .restart local v11       #values:Landroid/content/ContentValues;
    .restart local v20       #contentType:[B
    .restart local v21       #date:J
    .restart local v23       #deliveryReport:I
    .restart local v25       #expiry:J
    .restart local v34       #msgClass:[B
    .restart local v35       #msgId:J
    .restart local v38       #priority:I
    .restart local v39       #readReport:I
    .restart local v42       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v46       #transId:[B
    :cond_c
    const-string v4, "sub"

    const-string v5, ""

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1324
    .restart local v27       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v32       #messageSize:J
    .restart local v40       #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    sget-object v14, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .restart local v14       #addrFieldArray:[I
    goto :goto_2

    .line 1335
    .restart local v15       #addrType:I
    .restart local v19       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v29       #i$:I
    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    goto :goto_4

    .line 1358
    :cond_f
    const/16 v4, 0x97

    if-ne v15, v4, :cond_11

    .line 1359
    move-object/from16 v18, v19

    .restart local v18       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v28, 0x0

    .end local v29           #i$:I
    .restart local v28       #i$:I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_11

    aget-object v47, v18, v28

    .line 1360
    .restart local v47       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v47, :cond_10

    .line 1361
    invoke-virtual/range {v47 .. v47}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_10
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 1325
    .end local v18           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #i$:I
    .end local v31           #len$:I
    .end local v47           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    add-int/lit8 v28, v29, 0x1

    .restart local v28       #i$:I
    move/from16 v29, v28

    .end local v28           #i$:I
    .restart local v29       #i$:I
    goto/16 :goto_3

    .line 1369
    .end local v15           #addrType:I
    .end local v19           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_12
    if-eqz p3, :cond_1b

    .line 1374
    invoke-virtual/range {v40 .. v40}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1375
    const-wide/16 v43, 0x0

    .line 1376
    .local v43, threadId:J
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v4

    if-lez v4, :cond_13

    .line 1377
    const-string v4, "phone_type"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v5

    move-object/from16 v0, v40

    invoke-static {v4, v0, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;I)J

    move-result-wide v43

    .line 1379
    const-string v4, "thread_id"

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1387
    :goto_7
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1388
    .local v7, updateValues:Landroid/content/ContentValues;
    const-string v4, "content://search"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1391
    .local v6, searchUri:Landroid/net/Uri;
    const/16 v16, 0x0

    .line 1392
    .local v16, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mms/pdu/PduPersister;->isVzwNGMProject:Z

    if-eqz v4, :cond_16

    .line 1393
    sget-object v17, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .restart local v17       #arr$:[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .end local v29           #i$:I
    .restart local v28       #i$:I
    move/from16 v29, v28

    .end local v17           #arr$:[I
    .end local v28           #i$:I
    .end local v30           #len$:I
    .restart local v29       #i$:I
    :goto_8
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    aget v15, v17, v29

    .line 1394
    .restart local v15       #addrType:I
    const/16 v4, 0x89

    if-eq v15, v4, :cond_15

    .line 1395
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v45

    .line 1396
    .local v45, toValue:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v45, :cond_15

    .line 1397
    move-object/from16 v18, v45

    .restart local v18       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v28, 0x0

    .end local v29           #i$:I
    .restart local v28       #i$:I
    :goto_9
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_15

    aget-object v41, v18, v28

    .line 1398
    .local v41, str:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v16, :cond_14

    .line 1399
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v16

    .line 1397
    :goto_a
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 1381
    .end local v6           #searchUri:Landroid/net/Uri;
    .end local v7           #updateValues:Landroid/content/ContentValues;
    .end local v15           #addrType:I
    .end local v16           #address:Ljava/lang/String;
    .end local v18           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #i$:I
    .end local v31           #len$:I
    .end local v41           #str:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v45           #toValue:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v29       #i$:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v43

    .line 1382
    const-string v4, "thread_id"

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .line 1401
    .end local v29           #i$:I
    .restart local v6       #searchUri:Landroid/net/Uri;
    .restart local v7       #updateValues:Landroid/content/ContentValues;
    .restart local v15       #addrType:I
    .restart local v16       #address:Ljava/lang/String;
    .restart local v18       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28       #i$:I
    .restart local v31       #len$:I
    .restart local v41       #str:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v45       #toValue:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_a

    .line 1393
    .end local v18           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #i$:I
    .end local v31           #len$:I
    .end local v41           #str:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v45           #toValue:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    add-int/lit8 v28, v29, 0x1

    .restart local v28       #i$:I
    move/from16 v29, v28

    .end local v28           #i$:I
    .restart local v29       #i$:I
    goto :goto_8

    .line 1408
    .end local v15           #addrType:I
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v45

    .line 1409
    .restart local v45       #toValue:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v17, v45

    .local v17, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .end local v29           #i$:I
    .restart local v28       #i$:I
    :goto_b
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    aget-object v41, v17, v28

    .line 1410
    .restart local v41       #str:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v16, :cond_17

    .line 1411
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v16

    .line 1409
    :goto_c
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 1413
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_c

    .line 1417
    .end local v17           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #i$:I
    .end local v30           #len$:I
    .end local v41           #str:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v45           #toValue:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/provider/Telephony$Mms;->getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1418
    const-string v4, "name"

    const/16 v5, 0x3b

    const/16 v8, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_19

    const-string v4, "body"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v43

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1432
    .end local v6           #searchUri:Landroid/net/Uri;
    .end local v7           #updateValues:Landroid/content/ContentValues;
    .end local v16           #address:Ljava/lang/String;
    .end local v43           #threadId:J
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v8 .. v13}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1433
    return-void

    .line 1426
    .restart local v29       #i$:I
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v4

    if-lez v4, :cond_1c

    .line 1427
    const-string v4, "phone_type"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPhoneType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1429
    :cond_1c
    const/16 v37, 0x0

    .line 1430
    .local v37, nullString:Ljava/lang/String;
    const-string v4, "thread_id"

    move-object/from16 v0, v37

    invoke-virtual {v11, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 23
    .parameter "uri"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1662
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 1663
    .local v10, msgId:J
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1664
    :try_start_1
    sget-object v18, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1666
    const-string v18, "PduPersister"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateParts: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " blocked by isUpdating()"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    :try_start_2
    sget-object v18, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1679
    :cond_0
    :goto_0
    :try_start_3
    sget-object v18, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/mms/pdu/GenericPdu;

    .line 1680
    .local v15, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v15, :cond_1

    .line 1681
    check-cast v15, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v15           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1685
    :cond_1
    sget-object v18, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1686
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1689
    :try_start_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .local v16, toBeCreated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1692
    .local v17, toBeUpdated:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v14

    .line 1693
    .local v14, partsNum:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x28

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1694
    .local v7, filter:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1695
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v12

    .line 1696
    .local v12, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    .line 1697
    .local v13, partUri:Landroid/net/Uri;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v18

    const-string v19, "mms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1698
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1694
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1670
    .end local v7           #filter:Ljava/lang/StringBuilder;
    .end local v8           #i:I
    .end local v12           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v13           #partUri:Landroid/net/Uri;
    .end local v14           #partsNum:I
    .end local v16           #toBeCreated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v17           #toBeUpdated:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :catch_0
    move-exception v5

    .line 1671
    .local v5, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v18, "PduPersister"

    const-string v20, "updateParts: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1686
    .end local v5           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1736
    .end local v10           #msgId:J
    :catchall_1
    move-exception v18

    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v19

    .line 1737
    :try_start_7
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1738
    sget-object v20, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->notifyAll()V

    .line 1739
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1736
    throw v18

    .line 1700
    .restart local v7       #filter:Ljava/lang/StringBuilder;
    .restart local v8       #i:I
    .restart local v10       #msgId:J
    .restart local v12       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v13       #partUri:Landroid/net/Uri;
    .restart local v14       #partsNum:I
    .restart local v16       #toBeCreated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v17       #toBeUpdated:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_3
    :try_start_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1705
    const-string v18, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    :cond_4
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    const-string v18, "!="

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 1713
    .end local v12           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v13           #partUri:Landroid/net/Uri;
    :cond_5
    const/16 v18, 0x29

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v21, "/part"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_3
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1727
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/mms/pdu/PduPart;

    .line 1728
    .restart local v12       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    goto :goto_4

    .line 1722
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .line 1732
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1733
    .local v6, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 1736
    .end local v6           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_8
    sget-object v19, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v19

    .line 1737
    :try_start_9
    sget-object v18, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1738
    sget-object v18, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1739
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1741
    return-void

    .line 1739
    .end local v7           #filter:Ljava/lang/StringBuilder;
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #msgId:J
    .end local v14           #partsNum:I
    .end local v16           #toBeCreated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v17           #toBeUpdated:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :catchall_2
    move-exception v18

    :try_start_a
    monitor-exit v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v18

    .restart local v7       #filter:Ljava/lang/StringBuilder;
    .restart local v8       #i:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #msgId:J
    .restart local v14       #partsNum:I
    .restart local v16       #toBeCreated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .restart local v17       #toBeUpdated:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :catchall_3
    move-exception v18

    :try_start_b
    monitor-exit v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v18
.end method
