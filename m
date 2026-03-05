Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC003C6A36
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772724920; cv=none; b=Q4uebf9DywHg+WsZ+yAZWnXVi0jVvgZjeANJCHqA4mis2aGFIRnlp1aImZvtMyGVopoIkAcOpFCvTTuR9vWo8IrW/IM73tC0MjOck53FdWmJxfdWtpnoEr7xj/RVIvhZ8oTfRdKSLcO5rXOCrk55j1ZApDgr2BPaxV4ZlyDHHyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772724920; c=relaxed/simple;
	bh=gX/poSVfLw/mbCkZg9ptDnrSjS2QHGoa2q8K3Cn2tq4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QLuDQJx3yDn+gx7qti14GyfR2VzjLaO1QRrZPgvxj95OrcgROd+hgfY/wACWFQpfXMr5cuNI9aMwqsV16yvUrsGPz6oOH5s6+6hr1pnqzcZJruLXdFRFr/fXH/97irZa8kc4D95y5PYZ4WWbfB+BA8LhPjZ2DjkfxEp0MehXjQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772724920;
	bh=gX/poSVfLw/mbCkZg9ptDnrSjS2QHGoa2q8K3Cn2tq4=;
	h=Subject:From:To:Date:From;
	b=Ov9kmdA3Ozi5Z8by2kXLMwBvjaGVGOKNHi9UHaO+4mRXTWlD0VuJHDwFxSBmfnaJm
	 X7r/7ht3XTPY5ASlt0Ee7gdqwlbwiPBCPBwHWYnXL7SaI7FVj4DuOV+H3RvzQEvvVF
	 GTeRp2CwaqgFd/bKt7Dw+z4l3tYGNXJ/IvwzNOLU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48812C116C6
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:35:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7CD8A3808200
	for <linux-kernel-announce@vger.kernel.org>; Thu,  5 Mar 2026 15:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.129 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 05 Mar 2026 15:35:20 +0000
Message-Id: <20260305153520.release-6.6.129@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.129
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.129.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.129.xz

Linux kernel version 6.6.129 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.129.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.129.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.129.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.129/v6.6.128

