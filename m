Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC6A125D5
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730423229; cv=none; b=dz15iSQauuP4SUWqHn4kBcwJ+++x7i6rxzwfz/UVkj7udJw9Hu/I4ibMAItjkAn3RS9Yu3PvWRMSko607GoAyWyRMBSeUtUKpsItjo8rObkvF9gpJqmH/WcJcj+/S+kX4ctUTowung/e1Lei0FrgzQm20rrZ6RUkUUIUcZlXp+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730423229; c=relaxed/simple;
	bh=3DjAaXFtaTPxpUFDF0Q4MY4xNaKforb1BvjaZ0OKgzY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DzJPCPlO6QB9DnNTmTZf9OqS9Q29BX2Xqh+rC9NVrvKbXBo/feDvTofHHAuGOT9e4S1Cx8UsksPuiKN6FjZ0/jk8Je+wsYLeTghgJvs2LzTcqjCurprbjOqGyFWfTjJjI5GQuw2jqSH+mSFLAVob6vb5USu5pGiC3pOdcaMltPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1730423229;
	bh=3DjAaXFtaTPxpUFDF0Q4MY4xNaKforb1BvjaZ0OKgzY=;
	h=Subject:From:To:Date:From;
	b=K9i3vRNBj+xdJ5tr1zK2JV7ozF1GQohuZcftQuBn3o9Z8B8CFy5DhxdnmjdOdnKSg
	 MqRCFRdjxBN60QtQ9IUONH3qrrNoZA3WqFHyp1kMuA9Y3iOQQm7GS3/76qaVjEXByX
	 gQ1JURcC0YnpIGhogT2nQLIaV4CxzdOuPDoM8BGQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 304FCC4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:07:09 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3B364380AC02
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Nov 2024 01:07:18 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.170 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Nov 2024 01:07:16 +0000
Message-Id: <20241101010716.release-5.15.170@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.170
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.170.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.170.xz

Linux kernel version 5.15.170 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.170.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.170.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.170.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.170/v5.15.169

