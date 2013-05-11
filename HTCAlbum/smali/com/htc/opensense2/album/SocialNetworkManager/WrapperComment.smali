.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "WrapperComment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WrapperComment"


# instance fields
.field private mComment:Lcom/htc/opensense/social/data/Comment;

.field protected mDisplayName:Ljava/lang/String;

.field private mFormatedComment:Ljava/lang/CharSequence;

.field private mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field private mSzSeparatorName:Ljava/lang/String;

.field protected mTime:J

.field protected mUserAvatarURL:Ljava/lang/String;

.field protected mUserComment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 33
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 34
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mTime:J

    .line 37
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserAvatarURL:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mDisplayName:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Comment;)V
    .locals 3
    .parameter "comment"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 33
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 34
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    .line 35
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mTime:J

    .line 37
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserAvatarURL:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mDisplayName:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    .line 53
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, dateTime:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    invoke-static {p1, v1, p2, p3}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    return-object v0
.end method

.method public getFormatedComment(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0
.end method

.method public getOwnerAvatarURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserAvatarURL:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserAvatarURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Profile;->getProfile_id()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mDisplayName:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mTime:J

    .line 112
    :cond_0
    iget-wide v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mTime:J

    return-wide v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    .line 189
    const-string v3, "WrapperComment"

    const-string v4, "[WrapperComment][readFrom] No implement version changed..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 183
    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserAvatarURL:Ljava/lang/String;

    .line 184
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mDisplayName:Ljava/lang/String;

    .line 185
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    .line 186
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mTime:J

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 149
    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatarURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
