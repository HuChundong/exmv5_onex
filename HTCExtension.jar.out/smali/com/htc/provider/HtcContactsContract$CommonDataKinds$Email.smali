.class public final Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Email;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_ADDRESS:I = 0x2

.field public static final COLUMN_DISPLAY_NAME:I = 0x4

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_PRIMARY:I = 0x5

.field public static final COLUMN_RAW_CONTACT_ID:I = 0x1

.field public static final COLUMN_TYPE:I = 0x3

.field public static final EMAIL_LOOKUP:Ljava/lang/String; = "data13"

.field private static final SELECTION_CONTACT:Ljava/lang/String; = "contact_id=%d"

.field private static final SELECTION_CONTACT_PRIMARY:Ljava/lang/String; = "contact_id=%d AND is_primary<>0"

.field public static final SOCIALNETWORK_TYPE:Ljava/lang/String; = "data7"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2684
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Email;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2682
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmailCursorAndLocateAtPrimary(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 9
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 2773
    const/4 v6, 0x0

    .line 2774
    .local v6, primaryCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 2775
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "contact_id=%d AND is_primary<>0"

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2777
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Email;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2782
    if-eqz v6, :cond_0

    .line 2783
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2784
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_1

    .line 2794
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    return-object v6

    .line 2789
    .restart local v3       #selection:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method public static queryContactEmailAddresses(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    .line 2745
    const/4 v6, 0x0

    .line 2746
    .local v6, mailCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 2747
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "contact_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2749
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Email;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2755
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    return-object v6
.end method
