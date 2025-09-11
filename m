Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA78352FF2
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757605840; cv=none; b=LX1BlxU6yJrzsrZWFMGbyC2ZVhurpANi3BdegapoE4uqV6hr8ulhiHIsR5pnduM3nIqPSxkP2v321nEY3JiYAR28BrOHKNms/Wd1hi9wIfb7eK6Ihk84HeHlJHYHEtFbNfxVrmPkbSHKG6hb8hmUo6oDHMtHf9oGavCVSbs6W8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757605840; c=relaxed/simple;
	bh=If5Pg2sHn4LaQH4Mrpx+ONteBAyeRXIVgSmnzGQ7b0w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Djaxx5uCy039pYWpLqQSW9y6E53vK3j7q1kC5E4viVLiE5V7JT6X5E9e7El+0bTp514isni90oync/RAEgWap649ubZC/pO0JuMMY8gWwLul19q75xIZfdVqQpHcjfj5SbY/WAckzl13IbA2IHmMb9sZHfUaFcHJV1TsEsL1yBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757605840;
	bh=If5Pg2sHn4LaQH4Mrpx+ONteBAyeRXIVgSmnzGQ7b0w=;
	h=Subject:From:To:Date:From;
	b=Uit+jlIDRIgWbZgyl3hShDr05ttSDkNpQbO0YIBBhrLJ2sPDV9Te9Hy1SgnvObbB6
	 DUPewoEr+C+ksD5teuA7puAoKNEhJhCXbe2TeGSxOdiqxdzSU3uR4S1BsTtVpv6WNu
	 SKy8aFy8O7qrP6IMNBnXKtTef7EUbeNrD/WGH9jI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 536C1C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:40 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33F18383BF69
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Sep 2025 15:50:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.47 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Sep 2025 15:50:42 +0000
Message-Id: <20250911155042.release-6.12.47@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.47
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.47.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.47.xz

Linux kernel version 6.12.47 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.47.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.47.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.47.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.47/v6.12.46

