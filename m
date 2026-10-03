Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D78175A7B
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791025228; cv=none; b=EoU4405PMxzuoEn+xfzo/Xg1ryiLXh1y6tXzQN6fdFpaLpJHiKHSgdKHc1KNyArUEW9bK1rLr7RcXf1tY0/qn99lZWUveC2LTLqvso2TmM1mYJ9d+QP7XzMJ4oJm5ZrI1zuVU1nVIfWlLINISj4oWGR7S5eiaFv2AcHXrmL7Ifs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791025228; c=relaxed/simple;
	bh=LSwRcFnTIVlDAdzyVrK9VLOWnbH3AeIm5aAhbBu7onM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=a6NVcPe0E2YpyA7ziMyd6e0JCWd01Cuy5Q+GfXReKECDYZ4bhRUckRyazQczX5JfyIiuALWhdePwrFitqDvbSmwAxauxNLS8ic26CU2z28XdfOpGIZVJrMJmtxN42dce8fLu1jB0T//Ve42bSCG2PSndISq5RyPQDR/Od/OS0RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791025228;
	bh=LSwRcFnTIVlDAdzyVrK9VLOWnbH3AeIm5aAhbBu7onM=;
	h=Subject:From:To:Date:From;
	b=AVM3eC/RhHKPMLa3SLWSNhMyxJHGCp6jOqzcBkE7HB+iBrDX+sEzRmAF3jdFdc9Hp
	 z1ig041xI2YguVF3NxYwcy1pVXroUtfTK/P7q6lkWjYmKaAfYT4NaJEWixicNt+Yb6
	 Z1Rnz1VtwFZqwMKIZLs4qry3XgUwfkfFir4BxM8A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 440341F0089D
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A1A138119C4
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 11:00:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.158 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Oct 2026 11:00:23 +0000
Message-Id: <20261003110023.release-6.6.158@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.158
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.158.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.158.xz

Linux kernel version 6.6.158 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.158.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.158.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.158.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.158/v6.6.157

