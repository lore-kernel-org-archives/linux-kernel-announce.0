Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAEBE572
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711518938; cv=none; b=T2gVPZUoLZuB0z/RGhNwwEaYOWaj8IdWy3S4lKdgp+z4w3TJvcsHqaX71p84cbt/z4M8ZVwhvUiXyqSOGEIjERaxS+kK6mgRgzLX3gMi8hpqZiT/GRThLahbaEB/j7XF4OOxUcSPsxjce/9RJTSkhJOsmJJUBdN1/o3peYr73IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711518938; c=relaxed/simple;
	bh=2D23t3CYeFTsb2EbvaX0OTcOMYgT7CukjC9GRXPK3uY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=J+6vhHdopzpZUI3jgPyKNwgRdwFXZCIznXLD3mn5S25keBQSa3768XCKdOCIbcw7gdH1OBjsTpad+VWhiROHXZxyjNbZpqh/MvLbXiSb210KUOzeCW7B0qvI109/T323h1ervcMflVh6jncvQ3FT+SAPRRIM65bcfOHJXxURaJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711518938;
	bh=2D23t3CYeFTsb2EbvaX0OTcOMYgT7CukjC9GRXPK3uY=;
	h=Subject:From:To:Date:From;
	b=fmSV7swwSJ0MqkvphPnL6XjnR+C4nADITLta1RtqdsLfxKBGwiG1nE0iVyvo711Z2
	 boA3TBLPCmZSSDCnjMBRhmPon+A4IQwS45OHa2W0TdOExffKk2DOCmNOyL3tDIVp9Y
	 z0QyLhixchcBYtcuoTp4ADS3ZrekXW/qlukUnZZE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39766C433C7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:55:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 28581D95061
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:55:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.311 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:55:38 +0000
Message-Id: <20240327055538.release-4.19.311@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.311
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.311.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.311.xz

Linux kernel version 4.19.311 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.311.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.311.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.311.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.311/v4.19.310

