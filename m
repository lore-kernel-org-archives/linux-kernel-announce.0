Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E37618AFD
	for <linux-kernel-announce@vger.kernel.org>; Mon,  2 Mar 2026 00:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772409611; cv=none; b=MqIKGprbFYmjVv5ToQYU8ciAqhnWBWmPk4Xf5gD1dBf48Abx2koOCryn6/tmtH58LMJ3OZGHE4NFu6MAN3xE1g7UzD0QyPZAjAWnRCFOM0ZjC+Z3YE+PEnUY45naKr+ueoKNLLUXgTrtGRgFvEOCyYYKDEX2LDJByQrt2URPIRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772409611; c=relaxed/simple;
	bh=Xl42jlKDdYYP0X0U/P+y3PoJHIaYn6DlJgkWfzVcsmk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nXoG45qP9ebOhdYTAWlCQwxwM0oXNBLPCsL+I5zW/aFinmfhRHbI/jVcV3KA1+mSbhR4g8MtXi6KjJ0w5iFoeXIifHwrNZwXlG4nfy2MJyRyfH/aGFj6sTEFRvEfscR319pYREnxissmZvigibH+LTEDNN/59M6AZ+At9LcctP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772409611;
	bh=Xl42jlKDdYYP0X0U/P+y3PoJHIaYn6DlJgkWfzVcsmk=;
	h=Subject:From:To:Date:From;
	b=UK8x4BXhk0dz3zC2mwH93jT5sw4jfI10pLSP5kQbxocdL43ZqudKaYUnZgMYgp3Zl
	 RwpfTfyeyo1mogXKxCr77ft0lM8j5XTAVUBl4CaA4gsOy+2FZbKaZ0VFqL5r632hJK
	 LF2ahz8YmHTKbVzzKjvKy07D+VRtYqYu+SARudjw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2056C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon,  2 Mar 2026 00:00:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42DE439308CE
	for <linux-kernel-announce@vger.kernel.org>; Mon,  2 Mar 2026 00:00:14 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 02 Mar 2026 00:00:12 +0000
Message-Id: <20260302000012.release-7.0-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.0-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.0-rc2/vNone

Linux kernel version 7.0-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.0-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.0-rc2/vNone

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.0-rc2/v7.0-rc1

