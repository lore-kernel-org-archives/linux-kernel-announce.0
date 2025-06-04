Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA0726AC3
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749042307; cv=none; b=Pw+eKXFGqJVtGYNuFJAcRDgZ5tnx4xB2pLDDz+HoUTl8M2fpp5spi6QiXhBI+ZpSXFp2YTxF+yW/zc7efjmMA1wHmNP8pPUDvromAG/voUTLlILhcEqhIgXEcZOHyZEmaLuwc0c2AILFd6fRTs0WKWa5rVjqB778Yi/7zvklW8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749042307; c=relaxed/simple;
	bh=CbheRaVcGJChTXnQ0NPYHk1tPBkimh1WYEj0/0mjMfc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=onZLbIfDe0s/nljo7BKjOTEeKGxGpAOCsgxWI30xJvsf3iPfAr9YtKkMqH9GWZlQWf1qx7xBPQsV5sAcTa7sD6A2UGFQYb2a8J5A10n/FMdfjTvWCLKkfdAwSAXReIlC0dQu8rYM6pn95tr83ab66BN0QnhZ7ZCLufKrpUJWsp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749042307;
	bh=CbheRaVcGJChTXnQ0NPYHk1tPBkimh1WYEj0/0mjMfc=;
	h=Subject:From:To:Date:From;
	b=sL5uPoKRC9qQv1ntXGSOy2b0/x7dNW7zdUVuN+xkQsQYNb0bP/mF2hxs6+i/WORXz
	 TnaFR979+27nZoGjv65g79RTC56GXyWI4Clk9Nbj+6YfaHPB1IV3r8YGjEyd/D3j55
	 VZL4JjCezS7BDQjzFS1jo+8eIBF++TWS9aOHHkuY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2795C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:05:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3731639D60B5
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:05:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.185 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 13:05:38 +0000
Message-Id: <20250604130538.release-5.15.185@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.185
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.185.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.185.xz

Linux kernel version 5.15.185 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.185.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.185.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.185.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.185/v5.15.184

