Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F34379EFC
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Mar 2026 21:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773608965; cv=none; b=URvXsYa7CrrIoERpmdPRlXWhRolgsz/ljz8BpFCwbTIId6ueaIiOmI1ej3ZVn2SteU1crh/j2rMfFUbKFNXvz0eX+I0x6UdfRHEQlvZ+kPtt5Bk5hqyZ7+1a+WNh36VGSsXQF5njr+QREN/hC+ivQcrRYlACBwopeC82vbXRERU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773608965; c=relaxed/simple;
	bh=Hm06C0EJVSGLmWHfzyY2xxIoUrfxXY9yI5rDwt25SGQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=U2dF4rQx2qbtQgsJM5UcYGev33dgHOzaaG2vKivqXPvIewjDerN2b2oWqLATyPVSkr4sngOyutHXbRxP4kMoNHaSZ0q72YHxAnk0qOYbOxRBA60W/m4sd7OIAen1FJZcgODX/gBsek/fXiEgoyWfzNszxgeGTPniHorcxbHv3EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1773608965;
	bh=Hm06C0EJVSGLmWHfzyY2xxIoUrfxXY9yI5rDwt25SGQ=;
	h=Subject:From:To:Date:From;
	b=ItuarDJsMXnI451D1zv9B4dQZblnBh60w4bBGmKrIJyXmxcpmaIZAQCsZN4JRTz75
	 s6mqDD/Qod5nhwv5QqXNiDNby4tWCeANxY52TVqjIbnzV9LlH6RRlXRtjpHSUqIPl8
	 E1r4jppd0/X6T7k/5zPkOD/a/rNuo5iyUglDZk5I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A0E0C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Mar 2026 21:09:24 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05CD43808200
	for <linux-kernel-announce@vger.kernel.org>; Sun, 15 Mar 2026 21:09:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 15 Mar 2026 21:09:17 +0000
Message-Id: <20260315210917.release-7.0-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.0-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.0-rc4/vNone

Linux kernel version 7.0-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.0-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.0-rc4/vNone

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.0-rc4/v7.0-rc3

