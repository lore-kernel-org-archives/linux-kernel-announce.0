Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F57035898
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775910646; cv=none; b=NlGIWLgQzaIRyyPmt5ycIIvLuRkDxHYQBrbgWjpOJ1FIX3k58ww+UvTBAizG9Mfg19cQ9EQNtrs0OaimChg/Y+TVuZ1vvdB7glhf2a/S3NhAjeRwEliug1f2ZDsHKrgBmwHsbLZMnyTf91G1RpkoYMnCxUvNH1kmLY1h1Hu8/4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775910646; c=relaxed/simple;
	bh=OCLJLvNTaYnGcwH7vqeJ/3kMcXGa4RLpgrUS/GUy5pw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a5+91gS2KasPaerFT3byMpiQ2eiDQ1QRnyYOEFET4jFRb7dNycZ54UeTQCcxcZMe3M/ZnCjiXGhZlyV5JO1Bvp/qT9dxq/tLSgbDO5yXOFUSW4rdCn8uV2Q9MZmULXGe8pqFhH8crTMwmUnaAsJsBwT6fnwPGmUXXZO2byCaNSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1775910646;
	bh=OCLJLvNTaYnGcwH7vqeJ/3kMcXGa4RLpgrUS/GUy5pw=;
	h=Subject:From:To:Date:From;
	b=Kn3H8lwmzl+hxf0LBy718jSh1B9KR8kKeB8DkQhSZD5iZAEuAk2UdUvQxLW4olhq0
	 /6MWVr1q74JVVQDp/CJ9TXrLCB9NveXnNlqxZsuwD+PUOd2swRlzvI/jXqJ9TaXN33
	 8ewERn45XSBAfYfzgwWazTLLudRc7opBEcGPmTT4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C90DC116C6
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:30:46 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 05BB13809A8A
	for <linux-kernel-announce@vger.kernel.org>; Sat, 11 Apr 2026 12:30:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.168 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 11 Apr 2026 12:30:19 +0000
Message-Id: <20260411123019.release-6.1.168@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.168
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.168.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.168.xz

Linux kernel version 6.1.168 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.168.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.168.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.168.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.168/v6.1.167

