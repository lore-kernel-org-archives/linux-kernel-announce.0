Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2EE1EEA5D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743196826; cv=none; b=G/cKLxk3i5EvRCUh8eCmlkxZRw2+sV+O/h8pfeoihbDGLP+JDh01wzakCGmhx+ekBvuqiYfu3e1IDKXbzSO/gDP2j9iIQhyHVFsaVmpuow9nDJz+LlZNiSC60ijkIHqhMZtTZiyOXJmyDNn1jUXZbJBxpfNyvKDl0fAWQs7H5Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743196826; c=relaxed/simple;
	bh=q6im4elOSmMadjw5KInQdR10lujOVra5GfjHnR0pJdg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Q+4PTyE3fGahqlq11NjW3nM838y4zhH0YlUjB1WfvYNq9gCTY9GlMXp9LV3IAZWJLeR3KZRjlU+0guEGQS3InHmirCQCV4o4bLtooDb7vPiH28kfFH1WK8wITqA/h0gzLu7R/pk6dQ6wjdOUQ9voWQeOPF2ORvYXiyUwbHITZfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1743196826;
	bh=q6im4elOSmMadjw5KInQdR10lujOVra5GfjHnR0pJdg=;
	h=Subject:From:To:Date:From;
	b=oh1TZue7DclhAZaOnlR+fWynpGqgKddsUMGqzJqr5Rpjd+Qh6T5LNAFx2/4hNKQEE
	 ePnuRCt3MTNm2LQ73mVBXiBOUUZCzO/VzLQnRYtRhpIfQn8eZ979jXpGonY9Tkgie0
	 ojcIv62ARg1N9rySE9N4h/PvarkKwBjz8DEg19ZQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0776DC4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:20:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AE0E93805D89
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Mar 2025 21:21:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.132 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Mar 2025 21:21:02 +0000
Message-Id: <20250328212102.release-6.1.132@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.132
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.132.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.132.xz

Linux kernel version 6.1.132 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.132.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.132.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.132.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.132/v6.1.131

