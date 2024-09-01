Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AB943AB2
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Sep 2024 08:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725179061; cv=none; b=tLOUCV99X23nJpABH779QVhHLh0jSNjqum5rw+Vmq4GDPgkQuoRtBq4jjs319JFNRXgfQotEh4BcGV2OGHMZ/UaOzw9VLc+iAcDCmbVJ91/gUQquZnkWovd0nJma1u2+rE6LfycZs9DPgXj6O2ndaOfeFWBRgFwfLs+lYdc+RY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725179061; c=relaxed/simple;
	bh=mwR+xBP5+qlOqw7YsLNAk7/8f3WbieL7Sbj5hDjR08M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=aWeU5PM812g0Dg/zwUzpjndOOB3IpN9JFl4OpwrHGRl4qUSOS8eY29NKlPWu5gu7jqcIwcf9ZtgXL65ZnZ4MynNY2RCpDZcuMo05Zz37PPN80Uh2CoiOist1G6u6jmhw1vc/u/JmvfQSvhdwsceKlEHQRCNDxLWd/t84YS/sp94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725179061;
	bh=mwR+xBP5+qlOqw7YsLNAk7/8f3WbieL7Sbj5hDjR08M=;
	h=Subject:From:To:Date:From;
	b=OYtCr/O0Lppgg7gDMdnRcaC07xsPOqld1crBkdDo4r66zRfACYwx2nDq+/mqRLQgL
	 RO2E/QA15tIb5RazDMJaCWKtlYRl9yrEozCS+iy9HxfBah2vSJL8Z78uMK1S8sz9TU
	 9CKKlSo0Xr5Ec4QCWdeWofqRrq9ozQ5Aczk9xHrE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23431C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Sep 2024 08:24:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B3C6639D5FC1
	for <linux-kernel-announce@vger.kernel.org>; Sun,  1 Sep 2024 08:24:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 01 Sep 2024 08:24:21 +0000
Message-Id: <20240901082421.release-6.11-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.11-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.11-rc6/v6.10

Linux kernel version 6.11-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.11-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.11-rc6/v6.10

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11-rc6/v6.11-rc5

