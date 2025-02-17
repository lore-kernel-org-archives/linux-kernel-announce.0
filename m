Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CCA7212D62
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 09:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739784311; cv=none; b=QfbdPAZrO7rwK/hinnfOlm96Uk9KM8g0sgsJiGb0yyOh1UdtNfOCVfVKfpXeymWHAUZLdTeCxuHFBAiRGMKPtqRkx092tCR9Zc9Lj4iBwH04oYJ8iuKdLcER4Kyy71P/E9kqSTt300gTVqjMnqWai5MsAqG0HDfo+u5er7zkOGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739784311; c=relaxed/simple;
	bh=Nfj4RclCyiJffcMuVQYqjfI+MEJwa11Jk2n6fcbUXyY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FQ/st9H1zvKorvPDQBSXYdWHpUcF2JZywlcxJ3qE6OfzQWUvaE4BOhUyImKZdfV+nFqebywrUkDA2ywvYG/odMkrSy/lDjyE8Dc3Nh+KHqhLnhD8OksdXnXI+taP3oGGhcKF4p4olbTA6pGNy00Xag0TJHrlHZUebKoG6NL4Qs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739784311;
	bh=Nfj4RclCyiJffcMuVQYqjfI+MEJwa11Jk2n6fcbUXyY=;
	h=Subject:From:To:Date:From;
	b=Qd1s2bwwhgkXsb5xizpzxP3yJKIPtNTow6B8CKEJKo6oAod+CIXAAs+wPRCfmtIZz
	 SagBXT7PwmsEp94WiXIgs/4AirKWhSyTW8/9+7CKTJxKPmrXlcMgRPh62vt84hj3e3
	 34haDfnMzOFufKfeqEbb8jwzF36tzz2oZC4cGbsA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15F22C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 09:25:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 382C4380AAD2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 17 Feb 2025 09:25:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.14 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 17 Feb 2025 09:25:40 +0000
Message-Id: <20250217092540.release-6.12.14@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.14
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.14.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.14.xz

Linux kernel version 6.12.14 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.14.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.14.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.14.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.14/v6.12.13

