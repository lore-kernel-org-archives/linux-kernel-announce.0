Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DD91BF37
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721301653; cv=none; b=q+uAsBhJ5qKklIHAR9hhAPO2jS9np56dLRNcD+wBuZ8B1VniHcixn1c8cV4FYUR0bDZikiFNQAHsSxHrkSR8UGeJZZFc2m45SGpZW8HqCVBo1lbHvqb3eOLGlXgmwa3nlpG4dISLmCNVd5wlAfVl1/HT4EkRw0uOu55rk+ZcIPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721301653; c=relaxed/simple;
	bh=zYwt0GcFLzQMQG/ULpEI+J/txQLgVF27YSeqRmGm13k=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=bffHQ8XaRECi6ZM5g0+L1898M5x+eJgcFytOjZTt0CHR1eOXlkLLjxhZ0kBoYlF5vpVJ53OAPIlckfJbBHPSK5USWfYxjW9F1vPopkwl1GJTMtJoVmO5Qbc23bluk84N+GcE+ZWbWoagDJVuO8/z6WLt48UmQi5w3Kpw7ChGr6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721301653;
	bh=zYwt0GcFLzQMQG/ULpEI+J/txQLgVF27YSeqRmGm13k=;
	h=Subject:From:To:Date:From;
	b=N2n7+e+n7wmt8QLsvOiku/wN9ifgXqL6VOPSLyiz4iDgTDHXHPJKemnWDGnk20tBt
	 KEhOqmdlV2ucdF9HSuGRvtsq+958wtGyp+dp8dnMGVWIj4OkX91YG1jyaahrWEbn1P
	 mpd9krcxHaCpxgvdFDkLbPgdyc4HkxoF678Aecbc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D0AC116B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:20:52 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C6220C4332C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 18 Jul 2024 11:20:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.163 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 18 Jul 2024 11:20:52 +0000
Message-Id: <20240718112052.release-5.15.163@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.163
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.163.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.163.xz

Linux kernel version 5.15.163 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.163.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.163.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.163.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.163/v5.15.162

