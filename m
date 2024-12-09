Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6833B2165E2
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Dec 2024 10:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733738436; cv=none; b=DV6wTY0+WiIJAhK9FtT7kzphItZOwI6Eemf1qmrTsZ7AIEOleoLS0nIFA5x9yToOwQC3USgGuhhKLYMNckuBkDnKepL0tMxAaHDYqbmg59JNpCIwvP8WMPWN/llHbG7aDtjThm/L/H4eBTEFYD3gUmjBiXNPj5krpbXH85NT6MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733738436; c=relaxed/simple;
	bh=v9JIOTTMpHl5mlcTZruUqml3CKln3tJJcHLa1HYX8zo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AOBlp89kFA4RO2CnP9ufsEfe11RHTxPWZNq28QvuTxbc6VZggTSbK9HX0KPatqkYD9AmF30Ii7ame5LwCdiYaavdiVI1Mfuh1zG91nPoANlKRc4aVf+bbej6nxQLDBOuZuvsNWEWyndCpx55Fm4XMHeRnjG/GTM+8VDS88ftniY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1733738436;
	bh=v9JIOTTMpHl5mlcTZruUqml3CKln3tJJcHLa1HYX8zo=;
	h=Subject:From:To:Date:From;
	b=Tu/0Qvd/Tee0j98sx2JPVhBoZEkzVoA6IDthOJi10lGZE56JaR8rm0//1TYozQlnJ
	 VEQUV0TePAqtk4n/YsqOc73tH+OiWnZKXI21pYqWEQtKiPZiTVPgFWYTkSDqbMpB42
	 L138XkTLJgQHRzL/4BKHujyaxA14RPeP0JNF+1is=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E09A4C4CEE1
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Dec 2024 10:00:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7B32C380A95D
	for <linux-kernel-announce@vger.kernel.org>; Mon,  9 Dec 2024 10:00:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 09 Dec 2024 10:00:50 +0000
Message-Id: <20241209100050.release-6.12.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.4.xz

Linux kernel version 6.12.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.4/v6.12.3

