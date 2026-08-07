Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662A94483AB
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786083662; cv=none; b=hsHBh+H0xAUIjzKE1zCtJx1TV1lQOqqmJeQ1OB8dunyx11plzuJ7+oxd4VCqWR/maBVC3+1HepQ2m565kggQHru31ocknoBHjEHH2XKvOiTy15RptX9pZQpQraAT34CQuYhHcsk5AQEvSsWEw5saa3DCw+t7uEIeHSbCUiw7p6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786083662; c=relaxed/simple;
	bh=ziGwTm/PyjU2Qg9yGyE7ucbkKYkbWsBZRdtITULJTHM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=h+sARGdAkXPKfzFPRX7i7CEEtPG3WKiLtP2msqu01efNSr8evkqUyw7rk81pZfB+ErOgIWQm7Mdx2Askp1aEAb2s4glYteQSZoykia1zjxasGu/MtwYH+MXoYe/pkSi+gEOOf9pGLYObwW+G/xNI3saujodYwaVvw89JIFp4/ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786083662;
	bh=ziGwTm/PyjU2Qg9yGyE7ucbkKYkbWsBZRdtITULJTHM=;
	h=Subject:From:To:Date:From;
	b=r1A3Q0qlfOVH9pLFM8j9ptyvuZ3EmspdzK9TxmiHZn3uR/XDAnmeTBPR1gx13VHwA
	 5w28qQdSHVfG5UIT/mtkVSdfJp4eQMh41dO8jHRFj/1ZAjrnsX7JcIyebZA5qAx0Wy
	 /8ZRhxIdmwHgWWuKktYdY1xuic29UcT8Uch2ZZZA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02BB61F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:21:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C2EA380A961
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:20:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.215 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Aug 2026 06:20:19 +0000
Message-Id: <20260807062019.release-5.15.215@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.215
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.215.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.215.xz

Linux kernel version 5.15.215 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.215.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.215.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.215.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.215/v5.15.214

