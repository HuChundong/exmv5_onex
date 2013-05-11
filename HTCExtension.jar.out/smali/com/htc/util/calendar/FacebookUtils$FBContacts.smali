.class public Lcom/htc/util/calendar/FacebookUtils$FBContacts;
.super Ljava/lang/Object;
.source "FacebookUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/FacebookUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FBContacts"
.end annotation


# instance fields
.field private mAccount_Type:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mLookup:Ljava/lang/String;

.field private mRaw_Contact_Id:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V
    .locals 2
    .parameter "account_type"
    .parameter "dataset"
    .parameter "lookup"
    .parameter "contactid"
    .parameter "uri"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mAccount_Type:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mDataSet:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mLookup:Ljava/lang/String;

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mRaw_Contact_Id:J

    .line 130
    iput-object p1, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mAccount_Type:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mDataSet:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mLookup:Ljava/lang/String;

    .line 133
    iput-wide p4, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mRaw_Contact_Id:J

    .line 134
    iput-object p6, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mUri:Landroid/net/Uri;

    .line 135
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mLookup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mLookup:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/util/calendar/FacebookUtils;->isLinkedContact(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "linked_account_type"

    iput-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mAccount_Type:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mAccount_Type:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mRaw_Contact_Id:J

    return-wide v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getLoolup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mLookup:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/util/calendar/FacebookUtils$FBContacts;->mUri:Landroid/net/Uri;

    return-object v0
.end method
